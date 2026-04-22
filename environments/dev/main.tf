provider "aws" {
  region = var.aws_region
}

module "network" {
  source      = "../../modules/network"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  environment = "dev"
}

module "compute" {
  source        = "../../modules/compute"
  subnet_id     = module.network.public_subnet_id
  instance_type = var.instance_type
  ami_id        = var.ami_id
  key_name      = var.key_name
  environment   = "dev"
}