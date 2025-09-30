terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "iam" {
  source = "./modules/iam"
}

module "vpc" {
  source = "./modules/vpc"
}

module "s3" {
  source = "./modules/s3"
}


# resource "aws_organizations_account" "main" {
#   name  = "HagarInternAccount"
#   email = "hagarelhishi@gmail.com"
# }


