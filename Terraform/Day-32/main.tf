terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "drift_demo" {
  filename = "${path.module}/drift-demo.txt"
  content  = "Terraform managed content."
}

output "file_content" {
  value = local_file.drift_demo.content
}