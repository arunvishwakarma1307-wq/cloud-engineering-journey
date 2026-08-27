output "created_file_paths" {
  value = {
    module_one = module.file_creator_1.file_path
    module_two = module.file_creator_2.file_path
  }
}