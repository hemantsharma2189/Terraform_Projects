# Architecture

## Cloud Security Compliance & Threat Detection Architecture

```text
Terraform
   |
   v
AWS Account
   |
   +--------------------------+
   |                          |
   v                          v
AWS Security Hub          Amazon GuardDuty
   |                          |
   v                          v
Compliance Findings       Threat Findings
   |                          |
   +------------+-------------+
                |
                v
        Security Investigation
                |
                v
       Incident Response Notes

Additional Security Controls:
- KMS encryption
- S3 security log bucket
- Public access block
- IAM least-privilege policy
```

## Workflow

1. Terraform provisions cloud security services.
2. AWS Security Hub centralizes compliance and posture findings.
3. GuardDuty detects suspicious activity and threat behavior.
4. S3 stores security-related reports and documentation with KMS encryption.
5. IAM policy provides read-only security analyst visibility.
6. Findings are reviewed and documented using the incident report template.

## Security Value

This architecture supports:

- Continuous security monitoring
- Cloud threat detection
- Compliance visibility
- Least-privilege access
- Encrypted storage
- Better incident response documentation
