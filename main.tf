terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  # Connect to the Docker daemon available inside the Terraform Agent container
  host = "unix:///var/run/docker.sock"
}

# Pull Nginx image
resource "docker_image" "nginx" {
  name         = var.image_name
  keep_locally = false
}

# Random 4-digit suffix for container name
resource "random_integer" "nginx_suffix" {
  min = 1000
  max = 9999
}

# Determine container name
locals {
  final_container_name = length(var.container_name) > 0 ? var.container_name : "nginx${random_integer.nginx_suffix.result}"
}

# Run Nginx container
resource "docker_container" "nginx" {
  name  = local.final_container_name
  image = docker_image.nginx.name

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  restart = "unless-stopped"
}

