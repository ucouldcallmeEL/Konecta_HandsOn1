provider "aws" {
  region = "us-east-1"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 6.14.1"
		}
  }
}
