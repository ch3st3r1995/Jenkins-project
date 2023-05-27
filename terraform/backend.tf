#S3 backend
terraform {
  required_version = "1.4.6"
  backend "s3" {
    region  = "us-east-1"
    profile = "default"
    key     = "ansible-state-file"       #replace with your key
    bucket  = "ansible-batch8" #replace with your bucket
  }
}

#Providers
provider "aws" {
  region = "us-east-1"
}