variable "aws_region" {
  description = "AWS region for deploying cloud security resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming and tagging"
  type        = string
  default     = "cloud-security-threat-detection"
}

variable "security_log_bucket_name" {
  description = "Globally unique S3 bucket name for security logs and reports"
  type        = string
  default     = "cloud-security-threat-detection-demo-bucket-change-me"
}

variable "enable_security_hub_standards" {
  description = "Enable AWS Security Hub Foundational Security Best Practices standard"
  type        = bool
  default     = true
}

variable "common_tags" {
  description = "Common tags applied to project resources"
  type        = map(string)
  default = {
    Project     = "Cloud Security Compliance and Threat Detection"
    Environment = "Lab"
    ManagedBy   = "Terraform"
  }
}
