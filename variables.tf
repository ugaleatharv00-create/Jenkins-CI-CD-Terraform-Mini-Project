variable "docker_host" {
  description = "Docker daemon endpoint (Windows named pipe by default)"
  type        = string
  default     = "npipe:////./pipe/dockerDesktopLinuxEngine"
}

variable "image_name" {
  description = "Docker image built by Jenkins"
  type        = string
  default     = "task-manager"
}

variable "image_tag" {
  description = "Image tag to deploy (Jenkins passes the build number)"
  type        = string
  default     = "latest"
}

variable "container_name" {
  description = "Name of the container Terraform provisions"
  type        = string
  default     = "task-manager-app"
}

variable "internal_port" {
  description = "Port the Flask app listens on inside the container"
  type        = number
  default     = 5000
}

variable "external_port" {
  description = "Host port exposed to the user"
  type        = number
  default     = 8081
}

variable "environment" {
  description = "Deployment environment label"
  type        = string
  default     = "dev"
}
