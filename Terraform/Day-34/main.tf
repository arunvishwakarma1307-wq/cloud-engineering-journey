terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "schema_demo" {
  filename = "${path.module}/schema-demo.txt"
  content  = "Terraform provider schema inspection demonstration."
}

output "created_file" {
  value = local_file.schema_demo.filename
}