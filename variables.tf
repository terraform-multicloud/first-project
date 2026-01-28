variable "vpcname" {
    type        = string
    # default = "fromdefault-vpc"
  
}
# if type is not defined, by default it is string
variable "vpc-cidr" {
    default = "10.0.0.0/16"
  
}


variable "vm-ami" {
  
}
variable "vm-type" {
  
}
variable "bool1" {
    type = bool
    default = true
  
}
variable "somenumber" {
    type = number
    default = 1234
  
}