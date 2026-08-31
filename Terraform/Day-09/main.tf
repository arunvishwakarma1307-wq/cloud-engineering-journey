resource "local_file" "example" {
  count = var.file_count

  filename = "${path.module}/file-${count.index + 1}.txt"

  content = "This is Terraform file number ${count.index + 1}"
}