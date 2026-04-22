variable "vpc_id" {
  type        = string
  description = "ID của VPC"
}

variable "mssv" {
  type        = string
  description = "Mã số sinh viên"
}

variable "environment" {
  type        = string
  description = "Tên môi trường (dev/prod)"
}

variable "project_name" {
  type        = string
  description = "Tên dự án để gắn tag"
}

variable "owner" {
  type        = string
  description = "Tên chủ sở hữu để gắn tag"
}