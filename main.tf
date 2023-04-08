provider "aws" {
  profile    = "default"
  region     = "us-east-1" # Replace with your desired region
}

backend "s3" {
    bucket = "cc-tf-state-backend-ci-cd-vijeesh"
    key    = "tf-infra/terraform.tfstate"
    region = "us-east-1"
    aws_dynamodb_table = "terraform-state-locking"
    encrypt = true
}

module "elasticdev"{
 source = "./EC2"
}

module "tf-state" {

    source = "./CI-CD/tf-state"
    bucket_name  = "cc-tf-state-backend-ci-cd"
  
}
resource "aws_vpc" "dev01-vpc" {
    #arn                                  = "arn:aws:ec2:us-east-1:770713996620:vpc/vpc-0a665daf1164cb2b1"
    assign_generated_ipv6_cidr_block     = false
    cidr_block                           = "10.0.0.0/16"
    #default_network_acl_id               = "acl-09997321e66fc9805"
    #default_route_table_id               = "rtb-0787e499b54640fb9"
    #default_security_group_id            = "sg-0cc650cf964b2bf17"
    #dhcp_options_id                      = "dopt-0226444d312545685"
   # enable_classiclink                   = false
    #enable_classiclink_dns_support       = false
    enable_dns_hostnames                 = true
    enable_dns_support                   = true
    enable_network_address_usage_metrics = false
    #id                                   = "vpc-0a665daf1164cb2b1"
    instance_tenancy                     = "default"
    #ipv6_netmask_length                  = 0
     tags                                 = {
        "Name" = "dev01-vpc"
    }
    tags_all                             = {
        "Name" = "dev01-vpc"
    }
}