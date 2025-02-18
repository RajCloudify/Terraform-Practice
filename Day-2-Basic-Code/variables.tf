variable "ami-id" {
  description = "insert ami of the instance"
  type = string
  default = ""
}
variable "key" {
    description = "SSH key name" 
    type = string
    default = ""

}
variable "type" {
    description = "instance type"
    type = string
    default = ""


}
