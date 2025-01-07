resource "aws_vpc" "base" {
  cidr_block = var.vpc_info.cidr_block
  tags       = var.vpc_info.tags

}

resource "aws_subnet" "public" {
  cidr_block        = var.public_subnet.cidr_block
  availability_zone = var.public_subnet.az
  vpc_id            = aws_vpc.base.id
  tags              = var.public_subnet.tags

}



resource "aws_subnet" "private" {
  cidr_block        = var.private_subnet.cidr_block
  availability_zone = var.private_subnet.az
  vpc_id            = aws_vpc.base.id
  tags              = var.private_subnet.tags

}


resource "aws_security_group" "public" {
  name        = var.public_security_group.name
  description = var.public_security_group.description
  tags        = var.public_security_group.tags
  vpc_id      = aws_vpc.base.id

}

resource "aws_vpc_security_group_ingress_rule" "public" {
  from_port         = var.public_security_group.inbound_rules[0].port
  to_port           = var.public_security_group.inbound_rules[0].port
  cidr_ipv4         = var.public_security_group.inbound_rules[0].source
  ip_protocol       = var.public_security_group.inbound_rules[0].protocol
  description       = var.public_security_group.inbound_rules[0].description
  security_group_id = aws_security_group.public.id
}



resource "aws_security_group" "private" {
  name        = var.private_security_group.name
  description = var.private_security_group.description
  tags        = var.private_security_group.tags
  vpc_id      = aws_vpc.base.id

}

resource "aws_vpc_security_group_ingress_rule" "private" {
  from_port         = var.private_security_group.inbound_rules[0].port
  to_port           = var.private_security_group.inbound_rules[0].port
  cidr_ipv4         = var.private_security_group.inbound_rules[0].source
  ip_protocol       = var.private_security_group.inbound_rules[0].protocol
  description       = var.private_security_group.inbound_rules[0].description
  security_group_id = aws_security_group.private.id
}
