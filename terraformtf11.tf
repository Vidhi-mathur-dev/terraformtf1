provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "vidhi_bucket" {
  bucket = "vidhi-jenkins-demo-bucket"  # Must be globally unique

  tags = {
    Name        = "Vidhi-Jenkins-Bucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.vidhi_bucket.id
}
