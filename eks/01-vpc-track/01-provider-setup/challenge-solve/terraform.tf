terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Terraform   = "true"
      Environment = var.environment
    }
  }
}