variable "instance_name" {
  description = "Tên của EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Loại instance type"
  type        = string
}

variable "subnet_id" {
  description = "ID của subnet"
  type        = string
}

variable "environment" {
  description = "Tên môi trường (dev/prod)"
  type        = string
}

variable "ami_id" {
  description = "AMI ID cho instance"
  type        = string
}

variable "key_name" {
  description = "Tên key pair cho SSH"
  type        = string
}

variable "project_name" {
  description = "Tên dự án để gắn tag"
  type        = string
}

variable "owner" {
  description = "Tên chủ sở hữu để gắn tag"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Danh sách security group IDs"
  type        = list(string)
}

variable "associate_public_ip_address" {
  description = "Gắn public IP cho instance"
  type        = bool
}