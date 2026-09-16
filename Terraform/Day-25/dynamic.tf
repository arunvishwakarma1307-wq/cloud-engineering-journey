provider "aws" {
  region                      = "us-east-1"
  access_key                  = "dummy-access-key"
  secret_key                  = "dummy-secret-key"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_region_validation      = true
  skip_metadata_api_check     = true
}

variable "security_rules" {
  type = list(object({
    from_port = number
    to_port   = number
    protocol  = string
  }))

  default = [
    {
      from_port = 80
      to_port   = 80
      protocol  = "tcp"
    },
    {
      from_port = 443
      to_port   = 443
      protocol  = "tcp"
    }
  ]
}

resource "aws_security_group" "dynamic_demo" {
  name = "dynamic-block-demo"

  dynamic "ingress" {
    for_each = var.security_rules

    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}