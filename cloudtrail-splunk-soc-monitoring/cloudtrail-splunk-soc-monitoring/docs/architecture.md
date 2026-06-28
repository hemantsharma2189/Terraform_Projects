# Architecture

## Cloud Security Monitoring Flow

```text
AWS CloudTrail
     |
     v
CloudTrail JSON Events
     |
     v
Splunk Index: aws_cloudtrail
     |
     v
SOC Dashboard
     |
     +--> Failed Login Detection
     +--> Unauthorized API Detection
     +--> IAM Change Detection
     +--> Root User Activity Detection
     +--> CloudTrail Tampering Detection
     |
     v
SOC Analyst Triage
     |
     v
Incident Response Documentation
```

## Components

### AWS CloudTrail
CloudTrail records AWS API calls and account activity. These logs are useful for identifying unauthorized access attempts, IAM changes, and suspicious cloud behavior.

### Splunk
Splunk is used to search, analyze, visualize, and alert on CloudTrail security events.

### SOC Analyst Workflow
The analyst reviews alerts, filters false positives, investigates suspicious activity, and documents the incident response process.

## Security Value

This project improves cloud security visibility by helping detect:

- Unauthorized AWS API calls
- Failed login attempts
- Suspicious IAM changes
- Root account usage
- Security group rule changes
- Attempts to disable logging
