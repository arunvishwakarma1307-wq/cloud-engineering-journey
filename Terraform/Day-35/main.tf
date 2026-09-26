terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "json_plan_demo" {
  filename = "${path.module}/json-plan-demo.txt"
  content  = "Day 35 - Terraform machine-readable JSON plan."
}

output "created_file" {
  value = local_file.json_plan_demo.filename
}