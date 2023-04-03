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
}

resource "aws_vpc" "playgroud-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "playground-vpc"
    }
}
