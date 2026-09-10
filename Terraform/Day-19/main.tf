terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

variable "api_key" {
  description = "Example API key"
  type        = string
  sensitive   = false
}

resource "local_file" "secret_demo" {
  filename = "${path.module}/secret-demo.txt"
  content  = "API key configured for the application."
}

output "api_key" {
  value     = var.api_key
  sensitive = false
}

output "secret_file" {
  value = local_file.secret_demo.filename
}