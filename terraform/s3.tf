resource "aws_s3_bucket" "user_data" {
  bucket = "my-unique-bucket-name"
  acl    = "private"

  tags = {
    Name = "UserData"
  }
}

