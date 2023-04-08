resource "aws_route_table" "tfer--rtb-002D-00817de9d86b0efbb" {
  tags = {
    Name = "dev01-rtb-private2-us-east-1b"
  }

  tags_all = {
    Name = "dev01-rtb-private2-us-east-1b"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_route_table" "tfer--rtb-002D-04cd59161ef16b603" {
  tags = {
    Name = "dev01-rtb-private3-us-east-1c"
  }

  tags_all = {
    Name = "dev01-rtb-private3-us-east-1c"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_route_table" "tfer--rtb-002D-072ef99bb7ad01f8f" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0a70d8ced86aa1961"
  }

  tags = {
    Name = "dev01-rtb-private1-us-east-1a"
  }

  tags_all = {
    Name = "dev01-rtb-private1-us-east-1a"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_route_table" "tfer--rtb-002D-0787e499b54640fb9" {
  vpc_id = "vpc-0a665daf1164cb2b1"
}

resource "aws_route_table" "tfer--rtb-002D-0e5c8b6a321151b4a" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0a70d8ced86aa1961"
  }

  tags = {
    Name = "dev01-rtb-public"
  }

  tags_all = {
    Name = "dev01-rtb-public"
  }

  vpc_id = "vpc-0a665daf1164cb2b1"
}
