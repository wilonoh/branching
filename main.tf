# vpc resource
resource "aws_vpc" "branching_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  # region           = eu-west-2

  tags = {
    Name = "branching_vpc"
  }
}

# subnet resource
resource "aws_subnet" "branching_priv_sub1" {
  vpc_id     = aws_vpc.branching_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "branching_priv_sub1"
  }
}

#route table resource
resource "aws_route_table" "branching_priv_rout1" {
  vpc_id = aws_vpc.branching_vpc.id
 
  tags = {
    Name = "branching_priv_rout1"
  }
}