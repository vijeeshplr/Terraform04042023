provider "aws" {
   region     = "us-east-1" # Replace with your desired region
}

module "elasticdev"{
 source = "./EC2"
}

module "homechallenge" {
  
  source = "./homechallenege"
}
