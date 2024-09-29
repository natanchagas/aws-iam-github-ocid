terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.69.0"
      }
    }

    backend "s3" {
        bucket         = "natanchagas-aws-iam-github-ocid"
        key            = "path/to/my/key"
        region         = "eu-west-1"
    }
  }

  provider "aws" {
    region = "us-east-1"
  }