output "public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = aws_instance.elasticserverdev.*.instance_type
}
