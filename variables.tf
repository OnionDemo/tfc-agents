variable "container_name" {
  description = "Optional container name. If empty, a random name will be generated."
  type        = string
  default     = ""
}

variable "image_name" {
  type        = string
  description = "Docker image name (e.g., nginx:latest)"
  default     ="nginx:latest"
}

variable "internal_port" {
  type        = number
  description = "Internal container port"
  default     = 80
}

variable "external_port" {
  type        = number
  description = "Host port to map to container"
  default     = 8000
}

#variable "environment" {
  #type        = map(string)
  #description = "Environment variables for the container (key=value)"
  #default     = {}
#}

#variable "docker_network" {
  #type        = string
  #description = "Optional Docker network name to attach container (isolates container if set)"
  #default     = ""
#}

#locals {
 #environment_flags = [
    #for k, v in var.environment : "-e ${k}=${v}"
 # ]
#}
