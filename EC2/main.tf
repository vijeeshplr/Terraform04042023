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

resource "aws_instance" "destroy_instance" {
  instance_id = var.instance_id
  count       = var.count
  depends_on  = [aws_instance.destroy_instance]
  lifecycle {
    ignore_changes = [
      instance_type,
      user_data,
      ami,
      ebs_block_device,
      network_interface,
      source_dest_check,
    ]
  }
}