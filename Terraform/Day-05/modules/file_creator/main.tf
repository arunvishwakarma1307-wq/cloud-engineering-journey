resource "local_file" "file" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}