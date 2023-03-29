terraform {
  
  cloud {
    organization = "hazak-playground"

    workspaces {
      name = "main"
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