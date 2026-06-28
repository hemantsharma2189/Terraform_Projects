# Cloud Security Monitoring using AWS CloudTrail & Splunk

This project demonstrates a SOC-style cloud security monitoring solution using AWS CloudTrail logs and Splunk. It focuses on collecting, analyzing, and detecting suspicious AWS account activity such as unauthorized access attempts, IAM changes, failed logins, and risky cloud actions.

> Note: This project can be tested using sample CloudTrail logs without deploying live AWS infrastructure.

## Project Objectives

- Centralize AWS CloudTrail logs for security monitoring
- Build Splunk searches to detect suspicious AWS activity
- Create SOC-style alert triage workflows
- Identify false positives and suspicious IAM behavior
- Map detections to MITRE ATT&CK techniques
- Document findings using incident response notes

## Tools Used

- AWS CloudTrail
- Splunk SIEM
- AWS IAM
- CloudWatch concepts
- MITRE ATT&CK
- JSON logs
- SPL searches

## Folder Structure

```text
cloudtrail-splunk-soc-monitoring/
├── README.md
├── sample-logs/
│   └── cloudtrail-sample-events.json
├── splunk/
│   ├── splunk-setup.md
│   ├── dashboard.xml
│   └── saved-searches.spl
├── detections/
│   ├── detection-use-cases.md
│   └── mitre-attack-mapping.md
├── reports/
│   └── incident-report-template.md
└── docs/
    └── architecture.md
```

## Architecture

AWS CloudTrail logs are collected and analyzed in Splunk. SOC analysts can use Splunk dashboards, alerts, and SPL searches to investigate suspicious activity.

```text
AWS Account
   |
CloudTrail Events
   |
JSON Log Collection
   |
Splunk Index
   |
Dashboards + Alerts + Investigation
   |
SOC Triage + Incident Response Notes
```

## Sample Detection Use Cases

| Use Case | Description |
|---|---|
| Unauthorized API Calls | Detect AccessDenied or UnauthorizedOperation events |
| Suspicious IAM Activity | Detect user, role, policy, or access key changes |
| Root Account Usage | Detect activity from the AWS root user |
| Failed Console Login | Detect failed login attempts |
| Security Group Changes | Detect changes to inbound/outbound rules |
| CloudTrail Tampering | Detect attempts to stop or delete logging |

## Example Splunk Searches

### Failed Console Login

```spl
index=aws_cloudtrail eventName=ConsoleLogin responseElements.ConsoleLoginFailure="Failure"
| table _time userIdentity.arn sourceIPAddress userAgent eventName errorMessage
```

### Unauthorized API Calls

```spl
index=aws_cloudtrail (errorCode="AccessDenied" OR errorCode="UnauthorizedOperation")
| stats count by userIdentity.arn eventName sourceIPAddress errorCode
| sort - count
```

### IAM Policy Changes

```spl
index=aws_cloudtrail eventSource=iam.amazonaws.com
(eventName=CreatePolicy OR eventName=AttachUserPolicy OR eventName=PutUserPolicy OR eventName=CreateAccessKey OR eventName=UpdateAssumeRolePolicy)
| table _time userIdentity.arn eventName sourceIPAddress requestParameters
```

### CloudTrail Logging Disabled

```spl
index=aws_cloudtrail eventSource=cloudtrail.amazonaws.com
(eventName=StopLogging OR eventName=DeleteTrail OR eventName=UpdateTrail)
| table _time userIdentity.arn eventName sourceIPAddress requestParameters
```

## SOC Triage Workflow

1. Review the alert name, time, user, source IP, and event type.
2. Check whether the activity matches normal user behavior.
3. Identify if the event is a false positive or suspicious.
4. Review related CloudTrail events from the same user and IP address.
5. Map suspicious behavior to MITRE ATT&CK techniques.
6. Document findings and escalation decision.
7. Recommend containment actions such as disabling keys, rotating credentials, or reviewing IAM permissions.

## Resume Bullet

Built a cloud security monitoring solution using AWS CloudTrail and Splunk to collect, centralize, and analyze security logs across AWS resources. Created Splunk dashboards and alerts to detect unauthorized access attempts, suspicious IAM activity, and potential security incidents.
