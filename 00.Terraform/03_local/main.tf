terraform {
  required_version = ">=0.15"
  required_providers {
    aws = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "literature" {
  content  = <<-EOT
    "The only way to do great work is to love what you do." - Steve Jobs
    "aaaa bbbb cccc dddd eeee ffff gggg hhhh iiii jjjj kkkk llll"
    "aaaa bbbb cccc dddd eeee ffff gggg hhhh iiii jjjj kkkk llll"
    EOT
  filename = "${path.module}/hello.txt"
}
