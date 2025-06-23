terraform {
  required_version = ">= 1.0"
  
  backend "s3" {
    bucket = "your-terraform-state-bucket"  # Replace with your S3 bucket name
    key    = "lambda-setup/terraform.tfstate"
    region = "us-east-1"  # Replace with your region
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}