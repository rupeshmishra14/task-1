output "dmz_subnet_id" {
  description = "ID of the DMZ subnet"
  value       = aws_subnet.dmz.id
}

output "web_subnet_id" {
  description = "ID of the Web subnet"
  value       = aws_subnet.web.id
}

output "app_subnet_id" {
  description = "ID of the App subnet"
  value       = aws_subnet.app.id
}

output "db_subnet_id" {
  description = "ID of the Database subnet"
  value       = aws_subnet.db.id
}
