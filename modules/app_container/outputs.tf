output "app_url" {
  value = "http://localhost:${var.external_port}"
}

output "container_id" {
  value = docker_container.app.id
}

output "network_name" {
  value = docker_network.app.name
}
