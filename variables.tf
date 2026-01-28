variable "vpc-name" {
    type        = string
    default = "myvpc"
  
}
# if type is not defined, by default it is string
variable "vpc-cidr" {
    default = "10.0.0.0/16"
  
}


variable "vm-ami" {
    default = "ami-055a9df0c8c9f681c"
  
}
variable "vm-type" {
    default = "t2.medium"
  
}
variable "bool1" {
    type = bool
    default = true
  
}
variable "somenumber" {
    type = number
    default = 1234
  
}