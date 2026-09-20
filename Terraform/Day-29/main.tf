terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "format_demo" {
  filename = "${path.module}/format-demo.txt"
  content  = "Terraform formatting demonstration."
}

output "created_file" {
  value = local_file.format_demo.filename
}