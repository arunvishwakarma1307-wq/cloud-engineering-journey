terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

provider "local" {
  alias = "secondary"
}

resource "local_file" "default_provider" {
  filename = "${path.module}/default-provider.txt"
  content  = "This file uses the default provider configuration."
}

resource "local_file" "aliased_provider" {
  provider = local.secondary

  filename = "${path.module}/aliased-provider.txt"
  content  = "This file uses the secondary provider configuration."
}