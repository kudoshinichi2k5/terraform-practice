resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name        = "vpc-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id # tham chieu den output
  cidr_block        = var.subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name        = "public-subnet-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
  }
}