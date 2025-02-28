output "ip" {
    value = aws_instance.rajss.public_ip
}
output "AZ" {
    value = aws_instance.rajss.availability_zone
}
output "private-ip" {
    value = aws_instance.rajss.private_ip
    sensitive = true
}
output "SG" {
    value = aws_instance.rajss.vpc_security_group_ids
}
output "volume" {
    value = aws_instance.rajss.volume_tags
}