
output "private_ip" {
  value = aws_instance.dove_instance.private_ip
}
output "public_ip" {
  value = aws_instance.dove_instance.public_ip
}