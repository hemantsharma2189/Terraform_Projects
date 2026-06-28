resource "aws_kms_key" "security_logs_key" {
  description             = "KMS key for encrypting cloud security logs and reports"
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = merge(var.common_tags, {
    Name = "${var.project_name}-kms-key"
  })
}

resource "aws_kms_alias" "security_logs_key_alias" {
  name          = "alias/${var.project_name}-security-logs"
  target_key_id = aws_kms_key.security_logs_key.key_id
}

resource "aws_s3_bucket" "security_logs" {
  bucket = var.security_log_bucket_name

  tags = merge(var.common_tags, {
    Name = "${var.project_name}-security-logs"
  })
}

resource "aws_s3_bucket_versioning" "security_logs_versioning" {
  bucket = aws_s3_bucket.security_logs.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "security_logs_public_access_block" {
  bucket = aws_s3_bucket.security_logs.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "security_logs_encryption" {
  bucket = aws_s3_bucket.security_logs.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.security_logs_key.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
