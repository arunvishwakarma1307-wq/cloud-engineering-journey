resource "local_file" "first" {
  filename = "${path.module}/first.txt"
  content  = "This file is created first."
}

resource "local_file" "second" {
  filename = "${path.module}/second.txt"

  content = "The first file is: ${local_file.first.filename}"
}