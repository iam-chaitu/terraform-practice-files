provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "test" {
    instance_type = "t2.mi"
    ami = "ami-04a81a99f5ec58529"
    key_name = "learn"
    vpc_security_group_ids = [ "launch-wizard-5" ]
  
}

resource "aws_s3_bucket" "buckets3" {
    bucket = "chaitu-backend-statetestt"
  
}
resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
     attribute {
       name = "LockID"
       type = "S"
     }

  
}