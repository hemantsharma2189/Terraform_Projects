variable "aws_region" {
  description = "AWS region for deploying resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource tagging"
  type        = string
  default     = "secure-vpc-project"
}

variable "vpc_cidr" {
  description = "CIDR block for the custom VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}