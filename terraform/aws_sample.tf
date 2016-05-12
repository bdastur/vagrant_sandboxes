provider "aws" {
    access_key = "3Q"
    secret_key = ""
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-16e1027b"
    instance_type = "t2.small"
    tags = {
        Name = "TF test"
        last_updated_by = "testuser"
        role = "automation"
    }
}

