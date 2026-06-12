provider "aws" {
  region = "us-east-1" # Change to your preferred AWS region
}
resource "aws_s3_bucket" "example2" {
  bucket = "my-tf-test-bucket-unique-2026-xyz" # Change this to a unique name
}
