provider "aws" {
  region = "eu-west-1"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 6.14.1"
		}
  }
}
