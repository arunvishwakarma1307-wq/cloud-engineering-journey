terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

resource "local_file" "remote_state_demo" {
  filename = "${path.module}/remote-state-demo.txt"
  content  = "Terraform remote state learning practical."
}