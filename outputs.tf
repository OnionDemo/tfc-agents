output "container_name" {
  description = "Name of the Docker container"
  value       = var.container_name
}

output "image_used" {
  description = "Docker image used"
  value       = var.image_name
}

#output "docker_network_used" {
  #description = "Docker network attached (empty if host network)"
  #value       = var.docker_network
#}
