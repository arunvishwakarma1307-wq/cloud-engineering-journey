terraform {
  backend "s3" {
    bucket = "terraform-remote-state"
    key    = "day-16/terraform.tfstate"
    region = "us-east-1"

    endpoints = {
      s3 = "http://localhost:9000"
    }

    use_path_style = true

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
  }
}

resource "terraform_data" "remote_state_demo" {
  input = "Terraform remote state learning practical."
}

output "remote_state_status" {
  value = "Terraform state is stored in the MinIO S3-compatible backend."
}