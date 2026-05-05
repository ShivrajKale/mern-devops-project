terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote state (optional but recommended)
  # Uncomment after creating the S3 bucket manually
  # backend "s3" {
  #   bucket = "mern-devops-tfstate-YOUR_NAME"
  #   key    = "terraform.tfstate"
  #   region = "ap-south-1"
  # }
}

provider "aws" {
  region = var.aws_region
}