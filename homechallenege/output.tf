#Grab the IP address of the virtual machine instance.
output "homechallenge_private_ip" {
  value = aws_instance.homechallengedev01.private_ip
}

output "ansible_private_ip" {
 value = aws_instance.ansiblecontrolnode01.private_ip
}