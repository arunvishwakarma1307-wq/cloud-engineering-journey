terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

data "terraform_remote_state" "source" {
  backend = "local"

  config = {
    path = "../source/terraform.tfstate"
  }
}

resource "local_file" "consumer_data" {
  filename = "${path.module}/consumer-data.txt"

  content = "Retrieved from source state: ${data.terraform_remote_state.source.outputs.source_message}"
}

output "retrieved_message" {
  value = data.terraform_remote_state.source.outputs.source_message
}
