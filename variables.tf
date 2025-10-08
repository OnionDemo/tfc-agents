variable "container_name" {
  type        = string
  description = "Name of the Docker container"
  default     = "nginx_server"
}

variable "image_name" {
  type        = string
  description = "Docker image to use"
  default     = "nginx:latest"
}

variable "internal_port" {
  type        = number
  description = "Internal container port"
  default     = 80
}

variable "external_port" {
  type        = number
  description = "External host port"
  default     = 8080
}

variable "network_name" {
  type        = string
  description = "Docker network name"
  default     = "my_app_network"
}

variable "volume_name" {
  type        = string
  description = "Docker volume name"
  default     = "my_app_data"
}
