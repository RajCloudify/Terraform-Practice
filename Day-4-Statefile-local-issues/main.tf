resource "aws_instance" "name" {
  instance_type = var.Type-of-the-instance
  key_name = var.Key-pass
  ami = var.Amazon-Machine-Image
  availability_zone = var.AZ

  tags = {
    Name = var.Name-of-the-instance
  }
}
 