resource "aws_instance" "name" {
  ami=var.ami-id    
  key_name=var.key
  instance_type=  var.type
} 