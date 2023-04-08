
variable "ami_id" {
    default = "ami-007855ac798b5175e"
  }

  variable "instance_type" {
    default = "t2.medium"
  }

 variable "vpc_sg_id" {
    default = ["sg-0a7f8aac61536cdc7","sg-0cc650cf964b2bf17"]
  }

variable "subnet_id" {
    default = "subnet-01903c5b636805d26"
  }

variable "enable_public_ip" {
    type= bool
    default = true
  }

  variable "new_instance_type" {
    default = "t2.small"
  }