
terraform {
  required_version = ">= 0.12"
}

provider "random" {
  version = "~> 2.1"
}

provider "aws" {
  region = "us-west-2"
}
