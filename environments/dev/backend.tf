terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.44.0"
    }
  }

  backend "s3" {
    bucket = var.s3_bucket
    key    = var.s3_key
    region = var.aws_region

    # Khuyến nghị sau này: Thêm DynamoDB để khóa state (State Locking) khi làm việc nhóm
    # dynamodb_table = var.dynamodb_table
  }
}