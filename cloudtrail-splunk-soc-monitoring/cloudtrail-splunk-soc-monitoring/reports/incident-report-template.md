# Incident Report Template

## Alert Name
Example: Suspicious IAM Policy Change Detected

## Date and Time
YYYY-MM-DD HH:MM

## Severity
Low / Medium / High / Critical

## Source
AWS CloudTrail / Splunk

## Affected User or Role
Example: arn:aws:iam::123456789012:user/test-user

## Source IP Address
Example: 198.51.100.25

## Event Name
Example: AttachUserPolicy

## Initial Observation
Describe what happened and why the alert was triggered.

## Investigation Steps

1. Reviewed CloudTrail event details.
2. Checked source IP address and user agent.
3. Reviewed related activity from the same user.
4. Checked whether the action matched normal behavior.
5. Determined if the event was a false positive or suspicious.

## MITRE ATT&CK Mapping
Example: T1098 - Account Manipulation

## False Positive Analysis
Explain whether the activity was expected or unexpected.

## Recommended Action

- Confirm business justification.
- Review IAM permissions.
- Disable suspicious access keys if needed.
- Escalate to security team if unauthorized.

## Final Status
Open / Closed / Escalated

## Analyst Notes
Add SOC analyst notes here.
