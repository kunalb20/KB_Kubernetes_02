resource "aws_s3_bucket" "terraform-bucket" {
    bucket = "pr02-tfstate-bucket"
    tags = {
        Name = "first-bucket"
        Env = "Dev"
        Owner = "Kunal"
    }
  
}

resource "aws_s3_bucket_versioning" "my-bucket-versioning" {
  bucket = aws_s3_bucket.terraform-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}