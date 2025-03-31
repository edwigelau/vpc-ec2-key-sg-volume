terraform {
 required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "5.79.0"
  }
}  
}

 
# backend.tf

terraform {
  backend "s3" {
    bucket = "etweek7-terraform-state-bucket" # replace with your bucket
    key    = "qa/terraform.tfstate"
    region = "us-east-1"
    #use_lockfile = true
  }
}
   provider "aws" {
    region = "us-east-1"
     
   } 
 