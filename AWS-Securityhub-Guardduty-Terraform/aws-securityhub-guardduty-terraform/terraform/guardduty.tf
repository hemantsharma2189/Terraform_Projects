resource "aws_guardduty_detector" "guardduty" {
  enable = true

  finding_publishing_frequency = "SIX_HOURS"

  tags = var.common_tags
}
