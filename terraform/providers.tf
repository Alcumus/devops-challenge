# terraform {
#   backend "s3" {
#     encrypt = "true"
#     bucket  = "devops-challenge"
#     region  = "us-east-1"
#     key     = "terraform.tfstate"
#     workspace_key_prefix = "environment"
#   }
# }

provider "aws" {
  version = 2.57

  alias = "aws-default"
  region                  = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  # shared_credentials_file = var.shared_credentials_file
  # profile                 = var.aws_profile
}

provider "random" {
  version = "~> 2.2.1"
}
