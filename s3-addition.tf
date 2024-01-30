# snky alert to enable S3 bucket version
resource "aws_s3_bucket_versioning" "s3-versioning" {
  bucket = aws_s3_bucket.quintet.id
  versioning_configuration {
    status = "Enabled"
  }
}

# snky alert to enable S3 bucket logging
resource "aws_s3_bucket" "log_bucket" {
  bucket = "quintet-log-bucket"
}

resource "aws_s3_bucket_logging" "s3-logging" {
  bucket = aws_s3_bucket.quintet.id

  target_bucket = aws_s3_bucket.log_bucket.id
  target_prefix = "log/"
}
