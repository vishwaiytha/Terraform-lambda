terraform {
  required_version = ">= 1.0"
  
  backend "s3" {
    bucket = "s3_state_bucket" 
    key    = "lambda-setup/terraform.tfstate"
    region = "us-east-2"  
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