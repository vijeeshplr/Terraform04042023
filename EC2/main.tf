resource "aws_instance" "elasticserverdev" {
  count         = 3
  ami           = var.ami_id
  vpc_security_group_ids = var.vpc_sg_id
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  associate_public_ip_address = var.enable_public_ip
   tags = {
    Name = "elasticserverdev${count.index + 1}"
  }
}

# Change the instance type of the "elasticserver3" EC2 instance to the value of the "new_instance_type" variable
resource "aws_instance" "elasticserverdev3" {
  ami           = var.ami_id
  vpc_security_group_ids = var.vpc_sg_id
  subnet_id = var.subnet_id
  instance_type = var.new_instance_type
  associate_public_ip_address = var.enable_public_ip
  tags = {
    Name = "elasticserverdev3"
  }
}

