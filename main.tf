provider "aws" {
   region     = "us-east-1" # Replace with your desired region
}


module "homechallenge" {
  
  source = "./homechallenege"
}
