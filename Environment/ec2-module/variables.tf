variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  description = "ami_id in Ubuntu"
  type        = string
  default     = "ami-024e6efaf93d85776"
}

variable "custom_ec2" {
  type    = string
  default = "HR"
}