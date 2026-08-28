terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9"
    }
  }
}

data "local_file" "existing" {
  filename = "${path.module}/${var.file_name}"
}

