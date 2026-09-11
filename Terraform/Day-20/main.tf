terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "new_name" {
  filename = "${path.module}/moved-demo.txt"
  content  = "Terraform moved block practical."
}

moved {
  from = local_file.old_name
  to   = local_file.new_name
}