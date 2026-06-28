output "vpc_id" {
  description = "ID of the secure VPC"
  value       = aws_vpc.secure_vpc.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private_subnet.id
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.secure_sg.id
}