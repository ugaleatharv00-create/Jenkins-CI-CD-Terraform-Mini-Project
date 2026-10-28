terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

# Image already built locally by the Jenkins "Build" stage
data "docker_image" "app" {
  name = "${var.image_name}:${var.image_tag}"
}

resource "docker_network" "app" {
  name = "${var.container_name}-net"
}

resource "docker_container" "app" {
  name    = var.container_name
  image   = data.docker_image.app.id
  restart = "unless-stopped"
  env     = [for k, v in var.env_vars : "${k}=${v}"]

  networks_advanced {
    name = docker_network.app.name
  }

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  labels {
    label = "managed_by"
    value = "terraform"
  }
}
