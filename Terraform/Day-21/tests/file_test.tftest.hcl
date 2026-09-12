run "verify_file_content" {
  command = plan

  assert {
    condition = local_file.test_demo.content == "Terraform testing practical."
    error_message = "The file content does not match the expected value."
  }
}