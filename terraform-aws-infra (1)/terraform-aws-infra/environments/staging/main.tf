provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../../modules/vpc"
  env    = "staging"
}

module "iam" {
  source = "../../modules/iam"
  env    = "staging"
}

module "sg" {
  source = "../../modules/sg"
  env    = "staging"
}
