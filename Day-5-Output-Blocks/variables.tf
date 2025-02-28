variable "A_M_I" {
    description = "mention ami-id"
    type = string
    default = "ami-0ddfba243cbee3768"
}
variable "PASS" {
    description = "mention key name"
    type = string
    default = "KEYPAIR"
}
variable "TYPE" {
    description = "mention isntance type"
    type = string
    default = "t2.micro"
}
