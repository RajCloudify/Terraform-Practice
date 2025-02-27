resource "aws_instance" "name" {
    ami = var.A-M-I
    key_name = var.pass
    instance_type = var.INSTANCE-Type
}
resource "aws_s3_bucket" "name" {
    bucket = var.bucket-name
  
}