# 1. Create a VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = var.tenancy

  tags = {
    Name = "task1-vpc"
  }
}
