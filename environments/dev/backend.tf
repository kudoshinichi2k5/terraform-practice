terraform {
  backend "s3" {
    bucket = "nt542-kienle"
    key    = "dev/terraform.tfstate" # Đường dẫn lưu file state trong bucket
    region = "us-east-1"

    # Khuyến nghị sau này: Thêm DynamoDB để khóa state (State Locking) khi làm việc nhóm
    # dynamodb_table = "terraform-state-lock" 
  }
}