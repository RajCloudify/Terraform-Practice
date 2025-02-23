resource "aws_instance" "name" {
  ami = var.a-m-i
  instance_type = var.machine-type
  key_name = var.pass
  availability_zone = var.AZ
}