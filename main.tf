provider "aws" {
  profile    = "default"
  region     = "us-east-1" # Replace with your desired region
}

terraform {
  # Run init/plan/apply with "backend" commented-out (ueses local backend) to provision Resources (Bucket, Table)
  # Then uncomment "backend" and run init, apply after Resources have been created (uses AWS)
  backend "s3" {
    bucket         = "cc-tf-state-backend-ci-cd"
    key            = "tf-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }

module "elasticdev"{
 source = "./EC2"
}

module "tf-state" {

    source = "./CI-CD/tf-state"
    bucket_name  = "cc-tf-state-backend-ci-cd"
  
}

