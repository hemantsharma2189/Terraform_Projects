# Security Controls Implemented

## 1. AWS Security Hub

AWS Security Hub is enabled to centralize security findings and compliance checks.

### Security Value
- Helps identify misconfigurations
- Provides security posture visibility
- Supports compliance monitoring
- Aggregates findings from supported AWS security services

## 2. Amazon GuardDuty

GuardDuty is enabled for threat detection across the AWS account.

### Security Value
- Detects suspicious activity
- Identifies unusual API behavior
- Helps detect compromised credentials
- Supports cloud threat investigation

## 3. KMS Encryption

A customer-managed KMS key is created for encrypting the security log S3 bucket.

### Security Value
- Protects stored security reports
- Enables key rotation
- Supports encryption best practices

## 4. S3 Public Access Block

The security log bucket blocks public access.

### Security Value
- Prevents accidental public exposure
- Protects sensitive security data
- Enforces secure storage configuration

## 5. IAM Least-Privilege Policy

A read-only security analyst IAM policy is created.

### Security Value
- Provides limited visibility into Security Hub, GuardDuty, CloudTrail, CloudWatch, and S3
- Avoids broad administrator permissions
- Supports separation of duties
