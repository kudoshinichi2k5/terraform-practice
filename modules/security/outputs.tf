output "sg_id" {
  description = "ID của Security Group"
  value       = aws_security_group.main.id
}

output "sg_name" {
  description = "Tên của Security Group"
  value       = aws_security_group.main.name
}