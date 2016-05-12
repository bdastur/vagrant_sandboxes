provider "aws" {
    access_key = "AKIAJHENLHIKCLTEDM3Q"
    secret_key = "yRXR34W9xiKxu2v8CagxEltRg7k9FV2wNWWTkaqk"
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

