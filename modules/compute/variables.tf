variable "instance_type" {
    type = string
}

variable "subnet_id" {
    type = string
}

variable "environment" {
    type = string
}

variable "ami_id"        {
    type = string 
} 

variable "key_name"      { 
    type = string 
}

variable "project_name" {
  description = "Tên dự án để gắn tag."
  type        = string
}

variable "owner" {
  description = "Tên chủ sở hữu để gắn tag."
  type        = string
}

variable "vpc_security_group_ids"   { 
    type = list(string) 
}
variable "associate_public_ip_address" { 
    type = bool 
}