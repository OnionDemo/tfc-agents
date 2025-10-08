output "container_id" {
  description = "ID of the created Docker container"
  value       = docker_container.nginx.id
}

output "image_name" {
  description = "Docker image name used"
  value       = docker_image.nginx.name
}

