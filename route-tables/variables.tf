variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  type        = string
}

variable "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  type        = string
}

variable "dmz_subnet_id" {
  description = "ID of the DMZ subnet"
  type        = string
}

variable "web_subnet_id" {
  description = "ID of the Web subnet"
  type        = string
}

variable "app_subnet_id" {
  description = "ID of the App subnet"
  type        = string
}

variable "db_subnet_id" {
  description = "ID of the Database subnet"
  type        = string
}
