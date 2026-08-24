output "file_name" {
  description = "Path of the file created by Terraform"
  value       = local_file.day2.filename
}

output "file_content" {
  description = "Content written to the file"
  value       = local_file.day2.content
}