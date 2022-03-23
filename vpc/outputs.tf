output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.*.id
}

output "igw_id" {
  value = aws_internet_gateway.main_gateway.id
}

output "private_subnet_id" {
  value =  aws_subnet.private_subnets.*.id
}

output "nat_gw_id" {
  value = aws_nat_gateway.nat_gateway.*.id
}

output "vpc_tags" {
  value = var.tags
}

