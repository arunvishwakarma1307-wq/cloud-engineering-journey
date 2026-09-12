terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "test_demo" {
  filename = "${path.module}/test-demo.txt"
  content  = "Terraform testing practical."
}

output "file_content" {
  value = local_file.test_demo.content
}