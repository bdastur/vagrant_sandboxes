variable "ami" {
    description = "AMI image id"
    default = "ami-11111111"
}

variable "instance_type" {
    description = "Instance type. eg t1.micor, t2.small"
    default = "t2.small"
}

variable "vpc_id" {
    description = "VPC Id"
    default = "vpc-11111111"
}

