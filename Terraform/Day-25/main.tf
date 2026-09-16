terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "local" {}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}

resource "local_file" "validation_demo" {
  filename = "${path.module}/${var.environment}.txt"
  content  = "Terraform variable validation passed for ${var.environment}."
}

output "environment" {
  value = var.environment
}

output "created_file" {
  value = local_file.validation_demo.filename
}