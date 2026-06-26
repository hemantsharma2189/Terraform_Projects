# Secure Server Inventory Report

Environment: ${environment}  
Owner: ${owner}

| Hostname | OS | SSH Allowed | Status |
|---|---|---|---|
%{ for server in servers ~}
| ${server.hostname} | ${server.os} | ${server.ssh_allowed} | ${server.status} |
%{ endfor ~}

## Security Notes

- SSH access is disabled by default.
- Server names are generated dynamically.
- Inventory is created using Terraform automation.
- This project demonstrates Infrastructure as Code without requiring a cloud account.