terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "plan_demo" {
  filename = "${path.module}/plan-demo.txt"
  content  = "Terraform saved plan demonstration."
}

output "created_file" {
  value = local_file.plan_demo.filename
}