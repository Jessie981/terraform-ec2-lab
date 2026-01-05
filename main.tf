provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.4.0"
}

resource "aws_instance" "jessie_test_server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Jessie_Test_Server"
  }
}