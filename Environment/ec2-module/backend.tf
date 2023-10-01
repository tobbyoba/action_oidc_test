terraform {
  backend "s3" {
    bucket  = "bootcamp32-staging-205"
    region  = "us-east-2"
    key     = "ec2/terraform.tfstate"
    encrypt = "true"
  }
}
