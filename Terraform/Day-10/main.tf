resource "local_file" "example" {
  for_each = var.files

  filename = "${path.module}/${each.key}"
  content  = each.value
}