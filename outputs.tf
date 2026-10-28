output "app_url" {
  description = "URL where the application is reachable"
  value       = module.task_manager.app_url
}

output "container_id" {
  description = "ID of the provisioned container"
  value       = module.task_manager.container_id
}

output "network_name" {
  description = "Docker network created by Terraform"
  value       = module.task_manager.network_name
}
