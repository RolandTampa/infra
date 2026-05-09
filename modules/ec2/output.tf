output "public_ip" {
  value = aws_instance.class.public_ip
}

output "private_ip" {
  value = aws_instance.class.private_ip
}

output "instance_id" {
  value = aws_instance.class.id
}
