provider "aws" {
    region = "ap-south-1"
role_arn = "arn:aws:iam::651706759502:role/uma-jenkins-role"
}

resource "aws_s3_bucket" "terraform-bucket" {
  bucket = "my-ss-bucket-4568898"
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.terraform-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "MY-Dynamo-Db-ss"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}
