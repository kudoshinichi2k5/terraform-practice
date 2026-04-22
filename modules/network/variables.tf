variable "vpc_cidr" {
  description = "CIDR block cho VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block cho Public Subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block cho Private Subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone để tạo subnet"
  type        = string
}

variable "environment" {
  description = "Tên môi trường (dev/prod)"
  type        = string
}

variable "project_name" {
  description = "Tên dự án để gắn tag."
  type        = string
}

variable "owner" {
  description = "Tên chủ sở hữu để gắn tag."
  type        = string
}

variable "mssv" {
  description = "Mã số sinh viên để gắn tag."
  type        = string
}