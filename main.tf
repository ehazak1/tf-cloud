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

resource "aws_subnet" "subnet-1" {
  vpc_id = aws_vpc.playgroud-vpc.id
  cidr_block = "10.0.10.0/24"

  tags = {
    Name = "subnet-1"
  }
}

resource "aws_instance" "playground-vm" {
  ami = "ami-007855ac798b5175e"
  instance_type = "t2.micro"

  tags = {
     Name = "playground-vm"
  }
}
