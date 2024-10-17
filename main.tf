terraform {
  backend "s3" {
    bucket         = "rupesh-mishra-task-1" 
    key            = "terraform/task-1.tfstate"        
    region         = "us-east-1"             
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source   = "./vpc"
}

module "subnets" {
  source   = "./subnets"
  vpc_id   = module.vpc.vpc_id
}

module "gateways" {
  source        = "./gateways"
  vpc_id        = module.vpc.vpc_id
  dmz_subnet_id = module.subnets.dmz_subnet_id
}

module "route_tables" {
  source               = "./route-tables"
  vpc_id               = module.vpc.vpc_id
  internet_gateway_id  = module.gateways.internet_gateway_id
  nat_gateway_id       = module.gateways.nat_gateway_id
  dmz_subnet_id        = module.subnets.dmz_subnet_id
  web_subnet_id        = module.subnets.web_subnet_id
  app_subnet_id        = module.subnets.app_subnet_id
  db_subnet_id         = module.subnets.db_subnet_id
}

module "ec2" {
  source        = "./ec2"
  subnet_id     = module.subnets.web_subnet_id
  vpc_id        = module.vpc.vpc_id
}
