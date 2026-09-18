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
  content  = "First resource"
}

resource "local_file" "second" {
  filename = "${path.module}/second.txt"
  content  = "Second resource"
  depends_on = [
    local_file.first
  ]
}

resource "local_file" "third" {
  filename = "${path.module}/third.txt"
  content  = "Third resource"
  depends_on = [
    local_file.second
  ]
}