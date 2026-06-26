variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "server_count" {
  description = "Number of servers to generate"
  type        = number
  default     = 3
}

variable "owner" {
  description = "Owner of the server inventory"
  type        = string
  default     = "Security Team"
}