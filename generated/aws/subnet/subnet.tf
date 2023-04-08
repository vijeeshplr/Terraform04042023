resource "aws_subnet" "tfer--subnet-002D-013b4cc22ad6dbd3e" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "dev01-subnet-public1-us-east-1a"
  }

  tags_all = {
    Name = "dev01-subnet-public1-us-east-1a"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_subnet" "tfer--subnet-002D-01903c5b636805d26" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "dev01-subnet-public2-us-east-1b"
  }

  tags_all = {
    Name = "dev01-subnet-public2-us-east-1b"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_subnet" "tfer--subnet-002D-0536a97fcceefcb21" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.128.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "dev01-subnet-private1-us-east-1a"
  }

  tags_all = {
    Name = "dev01-subnet-private1-us-east-1a"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_subnet" "tfer--subnet-002D-07a9327d99138bf22" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.144.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "dev01-subnet-private2-us-east-1b"
  }

  tags_all = {
    Name = "dev01-subnet-private2-us-east-1b"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_subnet" "tfer--subnet-002D-0bb3b0d03592edc29" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.160.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "dev01-subnet-private3-us-east-1c"
  }

  tags_all = {
    Name = "dev01-subnet-private3-us-east-1c"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_subnet" "tfer--subnet-002D-0fba58e730842a168" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "dev01-subnet-public3-us-east-1c"
  }

  tags_all = {
    Name = "dev01-subnet-public3-us-east-1c"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}
