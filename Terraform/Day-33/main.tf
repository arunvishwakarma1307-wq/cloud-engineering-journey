terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "first" {
  filename = "${path.module}/first.txt"
  content  = "First Terraform resource."
}

resource "local_file" "second" {
  filename = "${path.module}/second.txt"
  content  = "Second Terraform resource."
}

resource "local_file" "third" {
  filename = "${path.module}/third.txt"
  content  = "Third Terraform resource."
}

output "files" {
  value = [
    local_file.first.filename,
    local_file.second.filename,
    local_file.third.filename
  ]
}