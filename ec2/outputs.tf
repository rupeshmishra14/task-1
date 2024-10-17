output "web_server_private_ip" {
  description = "Private IP address of the Web Server"
  value       = aws_instance.web_server.private_ip
}
