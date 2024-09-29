terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.69.0"
      }
    }

    backend "s3" {
        bucket         = "natanchagas-aws-iam-github-ocid"
        key            = "terraform.tfstate"
    }
  }

  provider "aws" {
    region = "us-east-1"
  }