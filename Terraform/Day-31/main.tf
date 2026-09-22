terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "replace_demo" {
  filename = "${path.module}/replace-demo.txt"
  content  = "Day 31 - Original resource."
}

output "created_file" {
  value = local_file.replace_demo.filename
}