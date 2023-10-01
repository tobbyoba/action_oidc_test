terraform {
  backend "s3" {
    bucket  = "bootcamp32-staging-205"
    region  = "us-east-2"
    key     = "oidc/terraform.tfstate"
    encrypt = "true"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
