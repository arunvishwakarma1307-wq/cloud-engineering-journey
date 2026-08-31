output "created_files" {
  value = local_file.example[*].filename
}