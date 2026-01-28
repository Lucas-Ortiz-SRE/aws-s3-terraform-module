resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-test-bucket"
  region = var.bucket_region

  tags = var.tags
}

resource "aws_s3_bucket_public_access_block" "aws_s3_bucket_public_access_block" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "aws_s3_bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = var.status_versioning
  }
}