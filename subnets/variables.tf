variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "dmz_subnet_cidr" {
  description = "CIDR block of the DMZ Subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "web_subnet_cidr" {
  description = "CIDR block of the Web Subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "app_subnet_cidr" {
  description = "CIDR block of the App Subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "db_subnet_cidr" {
  description = "CIDR block of the Database Subnet"
  type        = string
  default     = "10.0.4.0/24"
}
