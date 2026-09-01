output "created_files" {
  value = {
    for name, file in local_file.example :
    name => file.filename
  }
}