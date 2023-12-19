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
  bucket = "tedddadadadaddstbucket00dadadaddadadadddadadadad09sasa786578987873893893"

  tags = {
    Name        = "bucket00097873893893"
    Environment = "Dev"
  }
}
