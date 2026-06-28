# Detection Use Cases

## 1. Unauthorized API Calls

### Objective
Detect AWS API calls that failed due to missing permissions or unauthorized access.

### Splunk Search
```spl
index=aws_cloudtrail (errorCode="AccessDenied" OR errorCode="UnauthorizedOperation")
| stats count by userIdentity.arn eventName sourceIPAddress errorCode
| sort - count
```

### Triage Notes
- Check if the user normally performs this action.
- Review whether the access attempt was accidental or suspicious.
- Confirm whether the user recently changed roles or permissions.

### Possible Response
- Review IAM permissions.
- Confirm business justification.
- Escalate if activity is repeated or from an unknown IP.

---

## 2. Suspicious IAM Activity

### Objective
Detect risky IAM actions such as policy creation, policy attachment, role trust policy changes, and access key creation.

### Splunk Search
```spl
index=aws_cloudtrail eventSource=iam.amazonaws.com
(eventName=CreatePolicy OR eventName=AttachUserPolicy OR eventName=PutUserPolicy OR eventName=CreateAccessKey OR eventName=UpdateAssumeRolePolicy)
| table _time userIdentity.arn eventName sourceIPAddress requestParameters
```

### Triage Notes
- Identify who made the IAM change.
- Check whether the change was approved.
- Review the permissions granted by the policy.

### Possible Response
- Disable suspicious access keys.
- Remove excessive permissions.
- Rotate credentials if compromise is suspected.

---

## 3. CloudTrail Tampering

### Objective
Detect attempts to stop, delete, or modify CloudTrail logging.

### Splunk Search
```spl
index=aws_cloudtrail eventSource=cloudtrail.amazonaws.com
(eventName=StopLogging OR eventName=DeleteTrail OR eventName=UpdateTrail)
| table _time userIdentity.arn eventName sourceIPAddress requestParameters
```

### Triage Notes
- CloudTrail tampering is high priority because attackers often try to remove evidence.
- Confirm whether the change was approved by cloud/security teams.

### Possible Response
- Re-enable logging immediately.
- Investigate user activity before and after the event.
- Escalate as a possible security incident.
