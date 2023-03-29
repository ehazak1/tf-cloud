terraform {
  
  cloud {
    organization = "hazak-playground"

    workspaces {
      name = "tf-cloud"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  aws_secret = var.aws_secret
}

resource "aws_vpc" "playgroud-vpc" {
    cidr_block = "10.0.0.0/16"
}