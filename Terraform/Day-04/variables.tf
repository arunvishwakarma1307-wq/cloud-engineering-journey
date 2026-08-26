variable "server_config" {
  description = "Server configuration details"
  type        = map(string)

  default = {
    application = "nginx"
    environment = "production"
    owner       = "Arun"
  }
}