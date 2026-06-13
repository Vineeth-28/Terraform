# Backend Variables
variable "state_bucket_name" {
  type    = string
  default = "demo-state-bucket"
}

variable "state_table_name" {
  type    = string
  default = "demo-state-table"
}

variable "aws_region" {
  type    = string
  default = "us-west-2" 
}

# S3 Bucket
resource "aws_s3_bucket" "my_state_bucket" {
  bucket = var.state_bucket_name

  tags = {
    Name = var.state_bucket_name
  }
}

# DynamoDB Table
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name         = var.state_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = var.state_table_name
  }
}
