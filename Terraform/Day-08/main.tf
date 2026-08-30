resource "local_file" "environment" {
  filename = "${path.module}/environment.txt"

  content = local.environment_message
}