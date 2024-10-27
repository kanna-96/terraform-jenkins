variable "my-ami" {
    description = "this the value for the AMI"
    type = string
    default = "ami-0dee22c13ea7a9a67"
  
}

variable "my-instance-type" {
    default = "t2.micro"
  
}

variable "my-key-value" {
    default = "new-aws-key"
  
}

variable "my-tag" {
    default = "terraform-instance"
  
}

variable "app-id" {
    default = "3456"
  
}

variable "my-region" {
    default = "ap-south-1"
  
}

variable "my-availabilityzone" {
    default = "ap-south-1a"
  
}
variable "my-account" {
}
