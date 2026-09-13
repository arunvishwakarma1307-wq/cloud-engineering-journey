terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "check_demo" {
  filename = "${path.module}/check-demo.txt"

  content = "Terraform check block practical."
}

check "file_content_check" {
  assert {
    condition = local_file.check_demo.content == "Terraform check block practical."
    error_message = "The file content does not match the expected value."
  }
}