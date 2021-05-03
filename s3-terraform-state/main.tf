terraform {
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state"
  acl    = "private"

  tags = {
    name
    environment = ""

  }
}
