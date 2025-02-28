variable "A_M_I" {
    description = "instance AMI"
    type = string
    default = "ami-0d682f26195e9ec0f"
}
variable "PASS" {
    description = "Enter key name"
    type = string
    default = "KEYPAIR"
}
variable "TYPE" {
    description = "Enter the type of the instance"
    type = string
    default = "t2.micro"
}