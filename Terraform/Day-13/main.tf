resource "local_file" "example" {
  filename = "${path.module}/provisioner-demo.txt"
  content  = "Terraform provisioner demonstration."

  provisioner "local-exec" {
    command = "echo Destroy-time provisioner executed successfully"
    when    = destroy
  }
}