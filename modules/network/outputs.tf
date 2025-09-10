output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "sg_id" {
  value = aws_security_group.allow_http_ssh.id
}
