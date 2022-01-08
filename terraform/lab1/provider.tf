

terraform {
  backend "s3" {
    bucket = "devops-grooming"
    key    = "sai.tfstate"
    region = "ap-south-1"
  }
  required_version = ">= 0.12"
}
provider "aws" {
  region = "ap-south-1"
}