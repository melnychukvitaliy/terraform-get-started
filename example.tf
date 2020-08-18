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

resource "aws_instance" "example" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t2.micro"
}
