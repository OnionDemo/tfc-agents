output "container_id" {
  value = docker_container.this.id
}

output "network_name" {
  value = docker_network.this.name
}

output "volume_name" {
  value = docker_volume.this.name
}
