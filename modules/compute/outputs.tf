output "instance_id" {
  description = "ID của EC2 instance"
  value       = aws_instance.main.id
}

output "private_ip" {
  description = "Private IP của instance"
  value       = aws_instance.main.private_ip
}

output "public_ip" {
  description = "Public IP của instance (nếu có)"
  value       = aws_instance.main.public_ip
}
