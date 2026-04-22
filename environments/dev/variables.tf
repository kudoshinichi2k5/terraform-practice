variable "s3_bucket" {
  type = string
  description = "Tên S3 bucket để lưu trữ Terraform state."
}

variable "s3_key" {
  type = string
  description = "Đường dẫn file state trong bucket."
}

# variable "dynamodb_table" {
#   type = string
#   description = "Tên DynamoDB table để khóa state (nếu sử dụng)."
# }
variable "aws_region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "key_name" {
  type = string
}