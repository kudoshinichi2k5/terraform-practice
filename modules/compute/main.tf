resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  vpc_security_group_ids      = var.vpc_security_group_ids
  associate_public_ip_address = var.associate_public_ip_address # Bật/tắt theo yêu cầu

  tags = {
    Name        = "web-server-${var.environment}"
    Project     = var.project_name
    Owner       = var.owner
    Environment = var.environment
  }
}