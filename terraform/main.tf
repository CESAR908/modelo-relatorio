terraform {
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

# EC2 Reserved Instance
resource "aws_instance" "abstergo_app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name        = "abstergo-app-server"
    Environment = "production"
    Project     = "aws-implementation"
  }
}

# S3 Bucket com Intelligent-Tiering
resource "aws_s3_bucket" "abstergo_data" {
  bucket = "abstergo-data-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name    = "abstergo-data-bucket"
    Project = "aws-implementation"
  }
}

resource "aws_s3_bucket_intelligent_tiering_configuration" "abstergo" {
  bucket = aws_s3_bucket.abstergo_data.id
  name   = "EntireBucket"
  status = "Enabled"

  tiering {
    days          = 90
    access_tier   = "ARCHIVE_ACCESS"
  }

  tiering {
    days          = 180
    access_tier   = "DEEP_ARCHIVE_ACCESS"
  }
}

data "aws_caller_identity" "current" {}
