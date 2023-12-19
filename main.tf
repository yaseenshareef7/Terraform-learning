terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }

  required_version = ">= 0.15"
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

###########################
# Customer managed KMS key
###########################
resource "aws_s3_bucket" "example" {
  bucket = "bucket30009ddadada78738938967576775553"

  tags = {
    Name        = "bucket00097873893893"
    Environment = "Dev"
  }
}
