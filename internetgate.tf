resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.base.id
  tags = {
    Name = "myinternet"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.base.id
  tags = {
    Name = "mypublicroutetable"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.base.id
  tags = {
    Name = "myprivateroutetble"
  }

}

#association of public route table
resource "aws_route_table_association" "public" {
  route_table_id = aws_route_table.public.id
  subnet_id      = aws_subnet.public.id

}


#creting routes
resource "aws_route" "r" {
  gateway_id             = aws_internet_gateway.gw.id
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"

}




#association of private routetable

resource "aws_route_table_association" "private" {
  route_table_id = aws_route_table.private.id
  subnet_id      = aws_subnet.private.id

}

