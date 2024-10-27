provider "aws" {
  region = var.my-region
assume_role {
role_arn = var.my-account
}
}
