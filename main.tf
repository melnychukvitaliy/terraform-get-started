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

module "frontend_prod" {
  source   = "./publish_frontend/"
  
  route53_hosting_zone = "standupify.com"
  root_domain_name = "prod.standupify.com"
}


module "frontend_staging" {
  source   = "./publish_frontend/"
  
  route53_hosting_zone = "standupify.com"
  root_domain_name = "staging.standupify.com"
}
