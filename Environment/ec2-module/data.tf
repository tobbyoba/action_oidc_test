data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "bootcamp32-staging-205"
    key    = "vpc/terraform.tfstate"
    region = "us-east-2"
  }
}

# Terraform >= 0.12
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = data.terraform_remote_state.network.outputs.public_subnets[0]

  tags = {
    "Name" = "var.custom_ec2"
  }
}
