module "task_manager" {
  source = "./modules/app_container"

  image_name     = var.image_name
  image_tag      = var.image_tag
  container_name = var.container_name
  internal_port  = var.internal_port
  external_port  = var.external_port

  env_vars = {
    APP_ENV = var.environment
  }
}
