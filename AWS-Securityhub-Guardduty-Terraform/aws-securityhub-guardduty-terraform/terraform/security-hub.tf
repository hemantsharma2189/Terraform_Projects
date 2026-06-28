resource "aws_securityhub_account" "security_hub" {
  enable_default_standards = false
}

resource "aws_securityhub_standards_subscription" "aws_foundational_best_practices" {
  count         = var.enable_security_hub_standards ? 1 : 0
  depends_on    = [aws_securityhub_account.security_hub]
  standards_arn = "arn:aws:securityhub:${var.aws_region}::standards/aws-foundational-security-best-practices/v/1.0.0"
}
