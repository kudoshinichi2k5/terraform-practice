output "public_instance_id" {
  description = "ID của public EC2 instance"
  value       = module.public_instance.instance_id
}

output "public_instance_private_ip" {
  description = "Private IP của public instance"
  value       = module.public_instance.private_ip
}

output "public_instance_public_ip" {
  description = "Public IP của public instance"
  value       = module.public_instance.public_ip
}

output "private_instance_id" {
  description = "ID của private EC2 instance"
  value       = module.private_instance.instance_id
}

output "private_instance_private_ip" {
  description = "Private IP của private instance"
  value       = module.private_instance.private_ip
}

output "vpc_id" {
  description = "ID của VPC"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "ID của public subnet"
  value       = module.network.public_subnet_id
}

output "private_subnet_id" {
  description = "ID của private subnet"
  value       = module.network.private_subnet_id
}

output "security_group_id" {
  description = "ID của security group"
  value       = module.security.sg_id
}
