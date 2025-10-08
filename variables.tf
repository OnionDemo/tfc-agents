variable "container_name" {
  type        = string
  description = "Name of the Docker container"
  default     = "nginx"
}

variable "image_name" {
  type        = string
  description = "Docker image name"
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
  default     = 8000
}

variable "keep_locally" {
  type        = bool
  description = "Keep image locally after destroy"
  default     = false
}
