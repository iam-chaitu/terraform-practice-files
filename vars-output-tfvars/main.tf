provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "learnnew" {
    ami = var.ami_value
    instance_type = var.instance_type
    key_name = "learn"
    vpc_security_group_ids = ["launch-wizard-4"]
}

