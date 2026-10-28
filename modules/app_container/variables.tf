variable "image_name" {
  type = string
}

variable "image_tag" {
  type = string
}

variable "container_name" {
  type = string
}

variable "internal_port" {
  type = number
}

variable "external_port" {
  type = number
}

variable "env_vars" {
  type    = map(string)
  default = {}
}
