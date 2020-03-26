output "sg" {
  value = aws_security_group.custom_sg.id
}

output "private_subnet" {
  value = aws_subnet.private_subnet.id
}

output "public_subnet" {
  value = aws_subnet.public_subnet.id
}