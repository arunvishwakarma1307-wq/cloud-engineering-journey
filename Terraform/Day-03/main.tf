terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "names" {
  for_each = toset(var.names)

  filename = "${path.module}/${each.value}.txt"
  content  = "Hello from ${each.value}"
}