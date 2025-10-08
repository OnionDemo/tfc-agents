# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull Docker image
resource "docker_image" "nginx" {
  name         = var.image_name
  keep_locally = var.keep_locally
}

# Create Docker container
resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  name  = var.container_name

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
