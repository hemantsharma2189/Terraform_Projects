# Sample Finding Triage Report

## Finding Title
Suspicious IAM Activity Detected

## Finding Source
Amazon GuardDuty / AWS Security Hub

## Severity
High

## Affected Resource
IAM User / IAM Role

## Finding Summary
A suspicious IAM-related activity was detected. The activity may indicate unauthorized access, privilege escalation, or abnormal API usage.

## Investigation Steps

1. Reviewed GuardDuty finding details.
2. Checked affected IAM user or role.
3. Reviewed recent CloudTrail events.
4. Checked source IP address and user agent.
5. Verified whether the action was approved.
6. Compared the activity with normal user behavior.
7. Documented whether the finding was a false positive or required escalation.

## Possible MITRE ATT&CK Mapping

| Tactic | Technique |
|---|---|
| Initial Access | Valid Accounts |
| Privilege Escalation | Account Manipulation |
| Defense Evasion | Impair Defenses |

## Recommended Response

- Disable suspicious access keys if compromise is suspected.
- Review IAM permissions.
- Rotate credentials if needed.
- Confirm business justification.
- Escalate to the security team if unauthorized activity is confirmed.

## Final Status
Open / Closed / Escalated

## Analyst Notes
Add investigation notes here.
