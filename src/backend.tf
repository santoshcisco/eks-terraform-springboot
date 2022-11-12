terraform {
  backend "s3" {
    bucket         = "ascendion-tfstate"
    dynamodb_table = "ascendion-eks-dbtable"
    key            = "backend.tfstate"
    region         = "us-west-1"
    profile	   = "ascendion"
  }
}
