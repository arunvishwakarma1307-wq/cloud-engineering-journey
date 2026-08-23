terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "day1" {
  filename = "${path.module}/terraform-day1.txt"
  content  = "Hello from Terraform Day-1"
}
