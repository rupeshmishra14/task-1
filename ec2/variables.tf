variable "subnet_id" {
  description = "ID of the subnet where the EC2 instance will be launched"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "ami" {
  description = "AMI ID for the EC2 instance (Amazon Linux 2)"
  type        = string
  default     = "ami-06b21ccaeff8cd686"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key name for the EC2 instance"
  type        = string
  default     = "uno"
}

variable "private_ip" {
  description = "Private IP address for the EC2 instance"
  type        = string
  default     = "10.0.2.10"
}
