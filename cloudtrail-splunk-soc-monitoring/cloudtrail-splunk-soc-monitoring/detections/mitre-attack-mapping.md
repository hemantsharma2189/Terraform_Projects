# MITRE ATT&CK Mapping

| Detection | AWS Activity | MITRE Technique | Description |
|---|---|---|---|
| Failed Console Login | ConsoleLogin failure | T1110 - Brute Force | Repeated failed logins may indicate password guessing |
| Unauthorized API Calls | AccessDenied / UnauthorizedOperation | T1078 - Valid Accounts | Attempts to use valid credentials without proper permissions |
| IAM Policy Changes | AttachUserPolicy, PutUserPolicy | T1098 - Account Manipulation | Privilege changes may indicate account abuse |
| Access Key Creation | CreateAccessKey | T1098 - Account Manipulation | New access keys can be used for persistence |
| Root Account Usage | userIdentity.type=Root | T1078 - Valid Accounts | Root account activity should be rare and closely monitored |
| CloudTrail Disabled | StopLogging, DeleteTrail | T1562.008 - Disable or Modify Cloud Logs | Attackers may disable logging to hide activity |
| Security Group Changes | AuthorizeSecurityGroupIngress | T1562 - Impair Defenses | Opening ports can weaken network security controls |

## Notes

This mapping is used to demonstrate how CloudTrail detections can support SOC investigation and threat detection workflows.
