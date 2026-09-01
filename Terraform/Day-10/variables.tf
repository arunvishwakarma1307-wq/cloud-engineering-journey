variable "files" {
  description = "Files to create"
  type        = map(string)

  default = {
    "app.txt"    = "Application configuration"
    "db.txt"     = "Database configuration"
    "cache.txt"  = "Cache configuration"
  }
}