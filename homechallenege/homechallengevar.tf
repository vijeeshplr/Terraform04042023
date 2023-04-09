# Define variables
variable "aws_region" {
  default = "us-east-1"
}
variable "vpc_id" {
    default = "vpc-06fbf1a57c5d15ba1"
  }
variable "ami_id" {
    default = "ami-007855ac798b5175e"
  }

  variable "instance_type" {
    default = "t2.micro"
  }

 #homechallenge and ansible controlnode is in private subnet
variable "subnet_id" {
    default = "subnet-0eb3705a0ec6e7d0e"
  }

variable "enable_public_ip" {
    type= bool
    default = true
  }

variable "ssh_key_name" {
  default = "homechallenge"
}

