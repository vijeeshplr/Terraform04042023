
/***********AWS*************/

# Set up a network security group or firewall to restrict incoming and outgoing traffic to the virtual machine instance.
# Open TCP ports 22 and 443 on the virtual machine instance for incoming traffic.
resource "aws_security_group" "ssh_https" {
  name_prefix = "ssh-https"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/20"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/20"]
  }

  egress  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress  {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  }


# Create Instance & Enable SSH key-based authentication for accessing the virtual machine instance.
resource "aws_instance" "homechallengedev01" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.ssh_key_name
  vpc_security_group_ids = [aws_security_group.ssh_https.id]
  subnet_id     = var.subnet_id
  #associate_public_ip_address = var.enable_public_ip
  tags = {
    Name = "homechallengedev01"
  }
      
}
  
# Create Instance & Enable SSH key-based authentication for accessing the virtual machine instance.
resource "aws_instance" "ansiblecontrolnode01" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.ssh_key_name
  vpc_security_group_ids = [aws_security_group.ssh_https.id]
  subnet_id     = var.subnet_id
  #associate_public_ip_address = var.enable_public_ip
  tags = {
    Name = "ansiblecontrolnode01"
  }
     
} 