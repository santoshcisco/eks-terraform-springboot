terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
  profile = "ascendion"

  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key

  # other options for authentication
}
