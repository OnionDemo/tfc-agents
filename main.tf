terraform {
  required_version = ">= 1.5.0"
}

resource "null_resource" "docker_container" {
  provisioner "local-exec" {
    command = <<EOT
docker run -d \
  --name ${var.container_name} \
  ${var.docker_network != "" ? "--network ${var.docker_network}" : "-p ${var.external_port}:${var.internal_port}"} \
  ${join(" ", local.environment_flags)} \
  ${var.image_name}
EOT
    interpreter = ["/bin/bash", "-c"]
  }

  triggers = {
    image         = var.image_name
    container     = var.container_name
    external_port = var.external_port
    docker_network = var.docker_network
  }
}
