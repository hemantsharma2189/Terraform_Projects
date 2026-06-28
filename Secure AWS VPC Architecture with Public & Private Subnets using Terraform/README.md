## Expected Output

After running this Terraform project, the following AWS resources will be created:

* Custom AWS VPC
* Public subnet for internet-facing resources
* Private subnet for internal resources
* Internet Gateway for public internet access
* NAT Gateway for controlled outbound access from the private subnet
* Public and private route tables
* Security Group with restricted inbound access
* Network ACLs for subnet-level traffic control

This project is designed as an Infrastructure as Code lab to demonstrate secure AWS network architecture. Actual deployment screenshots are not included because the infrastructure was not deployed in a live AWS account.
