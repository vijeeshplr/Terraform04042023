provider "aws" {
  profile    = "default"
  region     = "us-east-1" # Replace with your desired region
}



module "elasticdev"{
 source = "./EC2"
}

module "tf-state" {

    source = "./CI-CD/tf-state"
    bucket_name  = "cc-tf-state-backend-ci-cd"
  
}
