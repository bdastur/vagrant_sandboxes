provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/vagrant/sync/creds"
    profile = "default"
}

resource "aws_key_pair" "access_key" {
    key_name = "tf-accesskey"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRU3C2dfbObCPOC9FS03KGf516YBavagrant@terraform"
}

resource "aws_security_group" "tf_allow_all" {
    name = "tf_allow_all"
    description = "TF: Allow all inbound traffic"
    vpc_id = "${var.vpc_id}"

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags {
        Name = "tf_allow_all"
    }
}

resource "aws_instance" "example" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "tf-accesskey"
    vpc_security_group_ids = ["${aws_security_group.tf_allow_all.id}"]

    tags = {
        Name = "TF test"
        last_updated_by = "testuser"
        role = "automation"
    }

    provisioner "local-exec" {
        command = "echo ${aws_instance.example.public_ip} >> provisioned_data.txt"
    }

    provisioner "local-exec" {
        command = "echo ${aws_instance.example.tags.Name} >> provisioned_data.txt"
    }

    provisioner "local-exec" {
        command = "echo ${aws_instance.example.tenancy} >> provisioned_data.txt"
    }
}

