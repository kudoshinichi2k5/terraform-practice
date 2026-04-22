output "vpc_id" {
  description = "ID của VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID của Public Subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "ID của Private Subnet"
  value       = aws_subnet.private.id
}

output "igw_id" {
  description = "ID của Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  description = "ID của NAT Gateway"
  value       = aws_nat_gateway.ngw.id
}
