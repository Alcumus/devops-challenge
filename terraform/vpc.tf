# VPC
resource "aws_vpc" "vpc1" {
    cidr_block = var.VPC-CIDR
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
      tags = {
        Name = "vpc1"
      }

}

# Public subnets
resource "aws_subnet" "public-subnet-1" {
    vpc_id = aws_vpc.vpc1.id
    availability_zone = "us-east-1a"
    cidr_block = var.public-sub-cidr
    map_public_ip_on_launch = "true"
      tags = {
          Name = "public-subnet-1"
      }

}

# Internet Gateway

resource "aws_internet_gateway" "IGW" {
    vpc_id = aws_vpc.vpc1.id
      tags = {
          Name = "IGW"
      }
}

# Route table and its association for public subnets

resource "aws_route_table" "pub-sub-route-table" {
    vpc_id = aws_vpc.vpc1.id
    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.IGW.id
    }
    tags = {
      Name = "pub-sub-route-table"
    }
}
resource "aws_route_table_association" "pub-route-table-association" {
  subnet_id = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.pub-sub-route-table.id
}
