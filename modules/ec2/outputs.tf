output "instance_id" {
  description = "ID of the web EC2 instance."
  value       = aws_instance.web[*].id
}

output "public_ip" {
  description = "Public IPv4 address of the web instance."
  value       = aws_instance.web[*].public_ip
}

output "public_dns" {
  description = "Public DNS name of the web instance."
  value       = aws_instance.web[*].public_dns
}

output "security_group_id" {
  description = "ID of the web server security group."
  value       = aws_security_group.vpc_sg.id
}
