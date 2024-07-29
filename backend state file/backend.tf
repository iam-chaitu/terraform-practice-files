terraform {
  backend "s3" {
    bucket         = "chaitu-backend-statetestt" 
    key            = "chaitu/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}