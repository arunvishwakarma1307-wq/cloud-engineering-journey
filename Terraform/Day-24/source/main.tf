terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "source_data" {
  filename = "${path.module}/source-data.txt"
  content  = "Data from the source Terraform project."
}

output "source_message" {
  value = local_file.source_data.content
}