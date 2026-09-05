terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

resource "docker_container" "imported" {
  name  = "terraform-import-demo"
  image = "nginx:alpine"
}