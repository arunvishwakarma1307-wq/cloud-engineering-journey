terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.8"
    }
  }
}

provider "local" {}

resource "local_file" "lock_demo" {
  filename = "${path.module}/lock-demo.txt"
  content  = "Terraform provider dependency locking demonstration."
}

output "created_file" {
  value = local_file.lock_demo.filename
}