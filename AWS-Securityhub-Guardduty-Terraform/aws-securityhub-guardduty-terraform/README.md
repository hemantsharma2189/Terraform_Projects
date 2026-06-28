# Cloud Security Compliance & Threat Detection using AWS Security Hub, GuardDuty & Terraform

This project demonstrates how to automate AWS cloud security monitoring and threat detection using Terraform. It enables AWS Security Hub and Amazon GuardDuty, provisions a secure encrypted S3 bucket for security log storage, and includes IAM least-privilege policy examples for cloud security operations.

> Note: This project is designed as an Infrastructure as Code security lab. Running `terraform apply` in a live AWS account may create AWS charges, especially for Security Hub, GuardDuty, and related services.

## Project Objectives

- Enable AWS Security Hub for centralized cloud security posture management
- Enable Amazon GuardDuty for threat detection
- Configure AWS Security Hub security standards
- Create an encrypted S3 bucket for storing security-related logs and reports
- Apply IAM least-privilege access concepts
- Use Terraform to automate cloud security service deployment
- Document expected security findings and incident response workflow

## Tools & Services Used

- Terraform
- AWS Security Hub
- Amazon GuardDuty
- AWS IAM
- AWS KMS
- Amazon S3
- AWS CloudTrail concepts
- Cloud Security Best Practices

## Architecture

```text
Terraform
   |
   v
AWS Account
   |
   +--> AWS Security Hub
   |       |
   |       +--> Security Standards
   |       +--> Compliance Findings
   |
   +--> Amazon GuardDuty
   |       |
   |       +--> Threat Detection Findings
   |       +--> Suspicious Activity Alerts
   |
   +--> Encrypted S3 Bucket
   |       |
   |       +--> Security Reports / Logs
   |
   +--> IAM Least-Privilege Policy
           |
           +--> Read-only security analyst access
```

## Folder Structure

```text
aws-securityhub-guardduty-terraform/
├── README.md
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── security-hub.tf
│   ├── guardduty.tf
│   ├── s3-kms.tf
│   ├── iam-policy.tf
│   ├── outputs.tf
│   └── .gitignore
├── docs/
│   ├── architecture.md
│   ├── security-controls.md
│   └── expected-output.md
├── reports/
│   └── sample-finding-triage-report.md
└── screenshots/
    └── README.md
```

## Terraform Resources Created

| Resource | Purpose |
|---|---|
| `aws_securityhub_account` | Enables AWS Security Hub |
| `aws_securityhub_standards_subscription` | Enables Security Hub security standards |
| `aws_guardduty_detector` | Enables Amazon GuardDuty |
| `aws_kms_key` | Creates encryption key for security storage |
| `aws_s3_bucket` | Stores security logs/reports |
| `aws_s3_bucket_server_side_encryption_configuration` | Enforces encryption at rest |
| `aws_s3_bucket_public_access_block` | Blocks public access |
| `aws_iam_policy` | Provides least-privilege read-only security analyst access |

## How to Use

### 1. Go to Terraform folder

```bash
cd terraform
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Format Terraform files

```bash
terraform fmt
```

### 4. Validate Terraform configuration

```bash
terraform validate
```

### 5. Review the plan

```bash
terraform plan
```

### 6. Apply only if you want to deploy in AWS

```bash
terraform apply
```

## Important Cost Warning

This project enables real AWS security services if deployed. Security Hub and GuardDuty may create charges after free trial limits. For GitHub portfolio use, you can upload the code and documentation without running `terraform apply`.

## Expected Output

After deployment, the AWS account should have:

- AWS Security Hub enabled
- Amazon GuardDuty enabled
- Security Hub standards subscription enabled
- Encrypted S3 bucket for security reports
- Public access blocked on the S3 bucket
- KMS encryption configured
- IAM least-privilege policy created for security analyst visibility
- Improved visibility into misconfigurations, suspicious activity, and cloud security findings

## Resume Bullet

Deployed and configured AWS Security Hub and GuardDuty using Terraform to automate cloud security monitoring and threat detection across AWS resources. Investigated security findings related to unauthorized access attempts, suspicious activity, and misconfigured resources while applying IAM least-privilege access, encryption controls, and continuous security monitoring best practices.
