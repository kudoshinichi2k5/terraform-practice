# VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name        = "vpc-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    MSSV        = var.mssv
  }
}

# Public Subnet
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name        = "public-subnet-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    MSSV        = var.mssv
  }
}

# Private Subnet
resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.private_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false

  tags = {
    Name        = "private-subnet-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    MSSV        = var.mssv
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "igw-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    MSSV        = var.mssv
  }
}

# Elastic IP for NAT Gateway
resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name        = "eip-nat-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    MSSV        = var.mssv
  }

  depends_on = [aws_internet_gateway.igw]
}

# NAT Gateway
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name        = "nat-gateway-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    MSSV        = var.mssv
  }

  depends_on = [aws_internet_gateway.igw]
}

# Route Table for Public Subnet
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block      = "0.0.0.0/0"
    gateway_id      = aws_internet_gateway.igw.id
  }

  tags = {
    Name        = "public-rt-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    MSSV        = var.mssv
  }
}

# Route Table Association for Public Subnet
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public_rt.id
}

# Route Table for Private Subnet
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw.id
  }

  tags = {
    Name        = "private-rt-${var.environment}"
    Environment = var.environment
    Project     = var.project_name
    Owner       = var.owner
    MSSV        = var.mssv
  }
}

# Route Table Association for Private Subnet
resource "aws_route_table_association" "private_assoc" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private_rt.id
}