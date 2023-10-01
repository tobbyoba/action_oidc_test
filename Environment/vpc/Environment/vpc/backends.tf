terraform {
  backend "s3" {
    bucket  = "bootcamp32-staging-205"
    region  = "us-east-2"
    key     = "vpc/terraform.tfstate"
    encrypt = true
  }
}
