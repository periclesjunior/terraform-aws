variable "aws_region" {
  description = "AWS region"
  default = "us-east-2"
}

variable "aws_profile" {
  description = "AWS profile"
  default = "mylabs"
}

variable "aws_ami" {
  description = "AWS ami"
  default = "ami-0fc20dd1da406780b"
}

variable "aws_ec2_type" {
  description = "AWS instance type"
  default = "t2.micro"
}

variable "aws_ssh_keys" {
  description = "AWS SSH keys"
  default = "~/.ssh/aws_terraform.pub"
}
