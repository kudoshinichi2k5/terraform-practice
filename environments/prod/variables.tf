variable "aws_region" {
  type        = string
  description = "AWS Region"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block cho VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block cho Public Subnet"
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR block cho Private Subnet"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone"
}

variable "mssv" {
  type        = string
  description = "Mã số sinh viên"
}

variable "environment" {
  type        = string
  description = "Tên môi trường (dev/prod)"
}

variable "instance_type" {
  type        = string
  description = "Loại instance type"
}

variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "key_name" {
  type        = string
  description = "Tên key pair cho SSH"
}

variable "project_name" {
  type        = string
  description = "Tên dự án"
}

variable "owner" {
  type        = string
  description = "Tên chủ sở hữu"
}

variable "public_instance_name" {
  type        = string
  description = "Tên của public instance"
}

variable "private_instance_name" {
  type        = string
  description = "Tên của private instance"
}

variable "s3_bucket" {
  type        = string
  description = "Tên S3 bucket để lưu trữ Terraform state"
}

variable "s3_key" {
  type        = string
  description = "Đường dẫn file state trong bucket"
}
