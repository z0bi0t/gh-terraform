provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "gh-terraform-demo"
    key = "prod/terraform.tfstate"
    region = "eu-north-1"
  }
}

module "vpc" {
  source   = "../modules/vpc"
  name     = var.name
  vpc_cidr = var.vpc_cidr
  azs      = var.azs
  tags     = var.tags
}
