provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../../modules/vpc"
  env    = "dev"
}

module "iam" {
  source = "../../modules/iam"
  env    = "dev"
}

module "sg" {
  source = "../../modules/sg"
  env    = "dev"
}