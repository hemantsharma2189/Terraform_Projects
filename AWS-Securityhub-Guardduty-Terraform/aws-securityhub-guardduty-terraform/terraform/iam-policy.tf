data "aws_iam_policy_document" "security_analyst_read_only" {
  statement {
    sid    = "SecurityHubReadOnly"
    effect = "Allow"

    actions = [
      "securityhub:GetFindings",
      "securityhub:GetInsightResults",
      "securityhub:GetInsights",
      "securityhub:DescribeHub",
      "securityhub:DescribeStandards",
      "securityhub:DescribeStandardsControls"
    ]

    resources = ["*"]
  }

  statement {
    sid    = "GuardDutyReadOnly"
    effect = "Allow"

    actions = [
      "guardduty:GetDetector",
      "guardduty:GetFindings",
      "guardduty:ListDetectors",
      "guardduty:ListFindings",
      "guardduty:GetFindingsStatistics"
    ]

    resources = ["*"]
  }

  statement {
    sid    = "CloudWatchAndCloudTrailReadOnly"
    effect = "Allow"

    actions = [
      "cloudwatch:DescribeAlarms",
      "cloudwatch:GetMetricData",
      "cloudwatch:GetMetricStatistics",
      "logs:DescribeLogGroups",
      "logs:DescribeLogStreams",
      "logs:GetLogEvents",
      "cloudtrail:LookupEvents",
      "cloudtrail:DescribeTrails",
      "cloudtrail:GetTrailStatus"
    ]

    resources = ["*"]
  }

  statement {
    sid    = "SecurityLogBucketReadOnly"
    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:ListBucket"
    ]

    resources = [
      aws_s3_bucket.security_logs.arn,
      "${aws_s3_bucket.security_logs.arn}/*"
    ]
  }
}

resource "aws_iam_policy" "security_analyst_read_only_policy" {
  name        = "${var.project_name}-security-analyst-read-only"
  description = "Least-privilege read-only access for Security Hub, GuardDuty, CloudTrail, CloudWatch, and security log bucket"
  policy      = data.aws_iam_policy_document.security_analyst_read_only.json

  tags = var.common_tags
}
