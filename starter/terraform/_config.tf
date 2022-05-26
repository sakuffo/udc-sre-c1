terraform {
  backend "s3" {
    bucket = "saa-udacity-c1-terraform"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = local.tags
  }
}
