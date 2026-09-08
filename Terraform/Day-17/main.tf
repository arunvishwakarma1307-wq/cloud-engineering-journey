terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "workspace_demo" {
  filename = "${path.module}/${terraform.workspace}.txt"

  content = "This file was created in the ${terraform.workspace} workspace."
}

output "current_workspace" {
  value = terraform.workspace
}

output "created_file" {
  value = local_file.workspace_demo.filename
}