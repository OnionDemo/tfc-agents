output "container_id" {
  value = module.docker_app.container_id
}

output "network_name" {
  value = module.docker_app.network_name
}

output "volume_name" {
  value = module.docker_app.volume_name
}
