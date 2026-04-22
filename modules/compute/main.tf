resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name = var.key_name

  tags = {
    Name        = "web-server-${var.environment}"
    Project     = "Lab-Cloud"
    Owner       = "23520797-KienLT"
    Environment = var.environment
  }
}