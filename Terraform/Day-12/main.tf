resource "local_file" "example" {
  filename = "${path.module}/lifecycle-demo-v2.txt"
  content  = "This content has been changed in configuration."

  lifecycle {
    ignore_changes = [
      content
    ]
  }
}