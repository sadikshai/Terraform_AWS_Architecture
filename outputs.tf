output "vpc_id" {
  value = aws_vpc.base.id

}

output "public_subnet_id" {
  value = aws_subnet.public.id

}


output "private_subnet_id" {
  value = aws_subnet.private.id

}

output "public_security_group_id" {
  value = aws_security_group.public.id
}

output "private_security_group_id" {
  value = aws_security_group.private.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "web_secure_url" {
  value = "https://${aws_instance.web.public_ip}"

}

