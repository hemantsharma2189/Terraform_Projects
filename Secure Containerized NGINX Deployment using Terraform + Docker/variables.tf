variable "container_name" {
  description = "Name of the NGINX Docker container"
  type        = string
  default     = "secure-nginx-container"
}

variable "nginx_image" {
  description = "NGINX Docker image version"
  type        = string
  default     = "nginx:stable-alpine"
}

variable "external_port" {
  description = "Localhost port used to access NGINX"
  type        = number
  default     = 8080
}

variable "network_name" {
  description = "Docker network name"
  type        = string
  default     = "secure-nginx-network"
}