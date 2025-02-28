
resource "aws_instance" "rajss" {
    ami = var.A_M_I
    key_name = var.PASS
    instance_type = var.TYPE
}