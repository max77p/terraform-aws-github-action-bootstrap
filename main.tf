provider "aws" {
  version = "~> 2.0"
  region  = "ca-central-1"
}

terraform {
  backend "s3" {
    bucket = "si-remote-state-bucket"
    key    = "default-infrastructure"
    region = "ca-central-1"
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "si-remote-state-bucket"

  versioning {
    enabled = true
  }
}
