resource "aws_instance" "web" {
  ami                         = "ami-0522ab6e1ddcc7055"
  key_name                    = "id_rsa"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.public.id]
  associate_public_ip_address = true
  instance_type               = "t2.micro"
  tags = {
    Name = "public_instance"
  }

}