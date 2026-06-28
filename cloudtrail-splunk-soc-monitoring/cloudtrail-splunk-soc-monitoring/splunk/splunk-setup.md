# Splunk Setup Guide

## Option 1: Use Splunk Locally with Docker

Run Splunk Enterprise locally:

```bash
docker run -d \
  --name splunk \
  -p 8000:8000 \
  -p 8088:8088 \
  -e "SPLUNK_START_ARGS=--accept-license" \
  -e "SPLUNK_PASSWORD=Password123!" \
  splunk/splunk:latest
```

Open Splunk:

```text
http://localhost:8000
```

Login:

```text
Username: admin
Password: Password123!
```

## Create Index

Create a Splunk index named:

```text
aws_cloudtrail
```

## Upload Sample Logs

Upload the file:

```text
sample-logs/cloudtrail-sample-events.json
```

Recommended source type:

```text
_json
```

Index:

```text
aws_cloudtrail
```

## Run Searches

Open Search & Reporting and run the SPL queries from:

```text
splunk/saved-searches.spl
```

## Dashboard

The file `dashboard.xml` contains a sample dashboard structure for CloudTrail monitoring.
