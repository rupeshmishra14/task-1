#1. Create Internet Gateway
resource "aws_internet_gateway" "main" {
  vpc_id = var.vpc_id

  tags = {
    Name = "main-igw"
  }
}

#2. Create Elastic IP for NAT Gateway
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "nat-eip"
  }
}

#3. Create NAT Gateway
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.dmz_subnet_id

  tags = {
    Name = "main-nat-gw"
  }

  depends_on = [aws_internet_gateway.main]
}
