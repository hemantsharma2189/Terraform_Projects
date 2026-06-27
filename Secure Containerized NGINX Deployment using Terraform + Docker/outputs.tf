output "container_name" {
  description = "Name of the deployed NGINX container"
  value       = docker_container.nginx.name
}

output "network_name" {
  description = "Name of the Docker network"
  value       = docker_network.nginx_network.name
}

output "application_url" {
  description = "URL to access the NGINX web page"
  value       = "http://localhost:${var.external_port}"
}