variable "container_name" {
  type        = string
  description = "Docker container name"
}

variable "image_name" {
  type        = string
  description = "Docker image name"
}

variable "internal_port" {
  type        = number
  description = "Internal container port"
}

variable "external_port" {
  type        = number
  description = "External host port"
}

variable "network_name" {
  type        = string
  description = "Docker network name"
}

variable "volume_name" {
  type        = string
  description = "Docker volume name"
}
