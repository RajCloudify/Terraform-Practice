output "IP" {
    value = aws_instance.rajss.public_ip
  
}
output "AZ" {
    value = aws_instance.rajss.availability_zone
  
}