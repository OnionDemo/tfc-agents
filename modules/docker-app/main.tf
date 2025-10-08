# Create Docker network
resource "docker_network" "this" {
  name = var.network_name
}

# Create Docker volume
resource "docker_volume" "this" {
  name = var.volume_name
}

# Pull Docker image
resource "docker_image" "this" {
  name          = var.image_name
  keep_locally  = false
}

# Create Docker container
resource "docker_container" "this" {
  name  = var.container_name
  image = docker_image.this.latest

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  networks_advanced {
    name = docker_network.this.name
  }

  volumes {
    volume_name    = docker_volume.this.name
    container_path = "/usr/share/nginx/html"
  }

  restart = "always"
}
