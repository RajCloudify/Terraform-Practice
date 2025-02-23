variable "a-m-i" {
    type = string
    description = "AMI ID of the instance"
    default = ""  
}
variable "machine-type"{
    type = string
    description = "The type of the instance to create"
    default = ""
}
variable "pass" {
    type = string
    description = "key pair name"
    default = ""
}
  variable "AZ" {
     type = string
     description = "Mention Availbilty-Zone"
     default = ""
  }
  

  

