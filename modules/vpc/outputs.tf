output "vpc_id" {
  value = aws_vpc.main_vpc.id
  description = "Id of the created VPC"
}
output "subnet_id" {
  value = aws_subnet.main_subnet.id
  description = "Id of the created subnet"
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main_igw.id
  description = "Id of the created internet gateway"
}