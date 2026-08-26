terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "config" {
  for_each = var.server_config

  filename = "${path.module}/${each.key}.txt"
  content  = each.value
}