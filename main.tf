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

module "docker_app" {
  source         = "./modules/docker-app"
  container_name = var.container_name
  image_name     = var.image_name
  internal_port  = var.internal_port
  external_port  = var.external_port
  network_name   = var.network_name
  volume_name    = var.volume_name
}
