output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "server_ip" {
  value = aws_instance.app_server.public_ip
}

output "vpc_id" {
  value = aws_vpc.this.id
}