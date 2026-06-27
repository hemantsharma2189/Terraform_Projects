provider "docker" {}

resource "docker_network" "nginx_network" {
  name = var.network_name
}

resource "docker_image" "nginx" {
  name         = var.nginx_image
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  restart = "unless-stopped"

  networks_advanced {
    name = docker_network.nginx_network.name
  }

  ports {
    internal = 80
    external = var.external_port
  }

  volumes {
    host_path      = abspath("${path.module}/html/index.html")
    container_path = "/usr/share/nginx/html/index.html"
    read_only      = true
  }

  memory = 128
  cpu_shares = 512
}