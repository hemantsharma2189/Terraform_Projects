output "security_hub_status" {
  description = "Security Hub account resource status"
  value       = aws_securityhub_account.security_hub.id
}

output "guardduty_detector_id" {
  description = "GuardDuty detector ID"
  value       = aws_guardduty_detector.guardduty.id
}

output "security_logs_bucket_name" {
  description = "Encrypted S3 bucket name for security logs and reports"
  value       = aws_s3_bucket.security_logs.bucket
}

output "kms_key_arn" {
  description = "KMS key ARN used for S3 encryption"
  value       = aws_kms_key.security_logs_key.arn
}

output "security_analyst_policy_arn" {
  description = "IAM policy ARN for least-privilege security analyst read-only access"
  value       = aws_iam_policy.security_analyst_read_only_policy.arn
}
