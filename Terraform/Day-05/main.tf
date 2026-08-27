module "file_creator_1" {
  source   = "./modules/file_creator"
  message  = "Hello from Module One"
  filename = "module-one.txt"
}

module "file_creator_2" {
  source   = "./modules/file_creator"
  message  = "Hello from Module Two"
  filename = "module-two.txt"
}