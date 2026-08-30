locals {
  environment_message = var.environment == "prod" ? "Production Environment" : "Non-Production Environment"

  project_name = "terraform"
  project_label = join("-", [
    local.project_name,
    "day",
    "08"
  ])

  uppercase_environment = upper(var.environment)
}