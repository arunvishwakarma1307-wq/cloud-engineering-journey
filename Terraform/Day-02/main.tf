terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "day2" {
  filename = "${path.module}/terraform-day2.txt"
  content  = var.message
}