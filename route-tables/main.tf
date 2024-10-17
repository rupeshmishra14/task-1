#3. Create Public Route Table
resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = "public-route-table"
  }
}

#3.2. Create Private Route Table
resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gateway_id
  }

  tags = {
    Name = "private-route-table"
  }
}

#3.3. Create Route Table Associations - DMZ - Public Facing
resource "aws_route_table_association" "dmz" {
  subnet_id      = var.dmz_subnet_id
  route_table_id = aws_route_table.public.id
}

#3.4. Create Route Table Associations - WEB, APP & Database - Private
resource "aws_route_table_association" "web" {
  subnet_id      = var.web_subnet_id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "app" {
  subnet_id      = var.app_subnet_id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "db" {
  subnet_id      = var.db_subnet_id
  route_table_id = aws_route_table.private.id
}
