output "inventory_file_path" {
  description = "Path of the generated server inventory file"
  value       = local_file.server_inventory.filename
}

output "server_names" {
  description = "Generated secure server names"
  value       = [for server in local.servers : server.hostname]
}