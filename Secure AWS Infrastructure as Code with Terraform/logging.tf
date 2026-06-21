resource "aws_s3_bucket" "logs" {
  bucket = "hemant-security-logs-bucket"
}

resource "aws_cloudtrail" "trail" {
  name           = "security-trail"
  s3_bucket_name = aws_s3_bucket.logs.id
}