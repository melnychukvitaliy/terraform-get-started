terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "terraform"
  region  = "us-east-1"
}

// Create a variable for our domain name because we'll be using it a lot.
//variable "www_domain_name" {
//  default = "www.root-domain-test.com"
//}

// We'll also need the root domain (also known as zone apex or naked domain).
variable "root_domain_name" {
  default = "test.com"
}
