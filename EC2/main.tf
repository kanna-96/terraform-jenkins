provider "aws" {
  region = "ap-south-1"
assume_role {
role_arn = var.my-acoount
}

}
variable "my-account" {
default = "asd"
}
resource "aws_instance" "terraform-instance-1" {
  ami           = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.micro"
  key_name      = "new-aws-key"
  tags = {
    Name  = "ss-instance-1"
    appid = "345"
    env   = "dev"
  }
  availability_zone = "ap-south-1a"
}

/*resource "aws_instance" "terraform-instance-2" {
  ami           = "ami-001843b876406202a"
  instance_type = "t2.micro"
  key_name      = "jenkins"
  tags = {
    Name = "ss-instance-2"

  }
  availability_zone = "ap-south-1a"
}*/
