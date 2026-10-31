terraform {
  required_version = ">= 1.16.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "dina-terraform-state-2026"
    key    = "env/dev/terraform.tfstate"
    region = "us-east-1"

  }
  
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
