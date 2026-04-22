variable "vpc_cidr" {
  description = "CIDR block cho VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block cho Public Subnet"
  type        = string
}

variable "environment" {
  description = "Tên môi trường (dev/prod)"
  type        = string
}