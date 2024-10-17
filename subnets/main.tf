#2.1. Create DMZ Subnet
resource "aws_subnet" "dmz" {
  vpc_id            = var.vpc_id
  cidr_block        = var.dmz_subnet_cidr

  tags = {
    Name = "dmz-subnet"
  }
}

#2.2. Create Web Subnet
resource "aws_subnet" "web" {
  vpc_id            = var.vpc_id
  cidr_block        = var.web_subnet_cidr

  tags = {
    Name = "web-subnet"
  }
}

#2.3. Create App Subnet
resource "aws_subnet" "app" {
  vpc_id            = var.vpc_id
  cidr_block        = var.app_subnet_cidr

  tags = {
    Name = "app-subnet"
  }
}

#2.4. Create Database Subnet
resource "aws_subnet" "db" {
  vpc_id            = var.vpc_id
  cidr_block        = var.db_subnet_cidr

  tags = {
    Name = "db-subnet"
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}
