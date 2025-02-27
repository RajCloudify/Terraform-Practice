variable "Type-of-the-instance" {
  type = string
  description = "Enter instance-type"
  default = ""
}
variable "Amazon-Machine-Image" {
    type = string
    description = "Enter the AMI-ID"
    default = ""
}
variable "Key-pass" {
    type = string
    description = "Enter the Keypair name"
    default = ""
}
variable "AZ" {
    type = string
    description = "Enter the Availabilty zone"
    default = ""
}
variable "Name-of-the-instance" {
    type = string
    description = "Instance name"
    default = ""
}