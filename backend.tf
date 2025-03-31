# backend.tf

terraform {
  backend "s3" {
    bucket = "etweek7-terraform-state-bucket" # replace with your bucket
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    #use_lockfile = true
  }
}