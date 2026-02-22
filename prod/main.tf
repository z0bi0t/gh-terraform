provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source   = "../modules/vpc"
  name     = var.name
  vpc_cidr = var.vpc_cidr
  azs      = var.azs
  tags     = var.tags
}
