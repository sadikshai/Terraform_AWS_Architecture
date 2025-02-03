vpc_info = {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "public"

  }
}


public_subnet = {
  az         = "ap-south-1a"
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "public"
  }
}


private_subnet = {
  az         = "ap-south-1b"
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "private"
  }
}


public_security_group = {
  description = "allow all traffic"
  name        = "public"
  tags = {
    Name = "public_seurity"
  }
  inbound_rules = [{
    port        = 80
    protocol    = "tcp"
    source      = "10.0.0.0/16"
    description = "it open the http port"
  }]
}




private_security_group = {
  description = "allow all traffic"
  name        = "private"
  tags = {
    Name = "private_seurity"
  }
  inbound_rules = [{
    port        = 8000
    protocol    = "tcp"
    source      = "10.0.0.0/16"
    description = "it open the https port"
  }]
}