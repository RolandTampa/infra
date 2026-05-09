output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}

output "public_subnet_id_2" {
  value = aws_subnet.public_2.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}
