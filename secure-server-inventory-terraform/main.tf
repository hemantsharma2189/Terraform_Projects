resource "random_pet" "server_name" {
  count  = var.server_count
  length = 2
}

locals {
  servers = [
    for i in range(var.server_count) : {
      hostname    = "srv-${var.environment}-${random_pet.server_name[i].id}"
      environment = var.environment
      owner       = var.owner
      os          = "Ubuntu Linux"
      ssh_allowed = false
      status      = "active"
    }
  ]
}

resource "local_file" "server_inventory" {
  filename = "${path.module}/generated/server_inventory.md"

  content = templatefile("${path.module}/templates/server_inventory.tpl", {
    servers     = local.servers
    environment = var.environment
    owner       = var.owner
  })
}