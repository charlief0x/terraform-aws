terraform {
  backend "s3" {
    bucket  = "charliefox-terraform-state"
    key     = "vps/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_lightsail_instance" "vps" {
  name              = "vps"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "micro_2_0"
  key_pair_name     = "cf_aws_2021-01-14"
}
