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
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.ec2_ssm_profile.name # ssm role

  # ⭐IMDS Settings
  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
  }


  tags = {
    Name = "Jessie_Test_Server"
  }
}