
locals {
  project_name = "terraform-day-07"
  environment  = "learning"
  file_message = "Hello from Terraform Locals"

  project_info = "${local.project_name}-${local.environment}"
}