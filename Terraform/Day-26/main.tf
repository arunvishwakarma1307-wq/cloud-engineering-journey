terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

variable "name" {
  type    = string
  default = "terraform"
}

locals {
  message = "Hello, ${var.name}!"
}

resource "local_file" "console_demo" {
  filename = "${path.module}/console-demo.txt"
  content  = local.message
}

output "message" {
  value = local.message
}

resource "local_file" "demo" {
  filename = "${path.module}/console-demo.txt"
  content  = local.message
}