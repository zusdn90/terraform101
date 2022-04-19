provider "aws" {
  region = "ap-northeast-3" # Please use the default region ID
}

# S3 bucket for backend
resource "aws_s3_bucket" "tfstate" {
  bucket = "tf101-test-apne3-tfstate"

  versioning {
    enabled = true # Prevent from deleting tfstate file
  }
}

# DynamoDB for terraform state lock
resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-lock"
  hash_key       = "LockID"
  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}