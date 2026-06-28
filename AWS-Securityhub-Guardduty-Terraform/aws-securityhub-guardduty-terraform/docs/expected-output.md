# Expected Output

If this Terraform project is deployed successfully, the expected output includes:

## AWS Security Hub

- Security Hub enabled in the selected AWS region
- AWS Foundational Security Best Practices standard enabled
- Compliance and security posture findings available in the AWS console

## Amazon GuardDuty

- GuardDuty detector enabled
- Threat detection findings available when suspicious activity is identified
- Finding publishing frequency configured

## S3 Security Log Bucket

- Encrypted S3 bucket created
- Versioning enabled
- Public access blocked
- Server-side encryption enabled with AWS KMS

## IAM Least-Privilege Policy

- IAM policy created for read-only security analyst access
- Access limited to security monitoring and investigation activities

## Terraform Outputs

Example output names:

```text
security_hub_status
guardduty_detector_id
security_logs_bucket_name
kms_key_arn
security_analyst_policy_arn
```

## Sample Detection Results

This project may help investigate findings such as:

| Finding Type | Source | Severity |
|---|---|---|
| Unauthorized API activity | GuardDuty / CloudTrail | Medium |
| Suspicious IAM activity | Security Hub / GuardDuty | High |
| S3 bucket public access risk | Security Hub | High |
| Unusual login behavior | GuardDuty | Medium |
| Misconfigured encryption setting | Security Hub | Medium |

## Note

Do not claim live deployment screenshots unless you actually deploy this project in an AWS account. For GitHub portfolio use, this section should be labeled as expected output.
