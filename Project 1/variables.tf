variable "aws_region" {
  default = "eu-west-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "aws_ec2_ami_id" {
  default = "ami-03d8b47244d950bbb"
}

variable "instance_type" {
  default = "t2.micro"
}


variable "ssh_cidr_block" {
  default = "0.0.0.0/0"
}