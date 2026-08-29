
resource "local_file" "example" {
  filename = "${path.module}/local-output.txt"

  content = "${local.project_info} - ${local.file_message}"
}