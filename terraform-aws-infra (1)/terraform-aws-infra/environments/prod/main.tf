provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../../modules/vpc"
  env    = "prod"
}

module "iam" {
  source = "../../modules/iam"
  env    = "prod"
}

module "sg" {
  source = "../../modules/sg"
  env    = "prod"
}
