resource "aws_instance" "rajss" {
    ami = var.A_M_I     
    instance_type = var.TYPE
    key_name = var.PASS
 
}
