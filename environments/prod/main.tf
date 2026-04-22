provider "aws" {
  region = var.aws_region
}

module "network" {
  source                = "../../modules/network"
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  availability_zone     = var.availability_zone
  mssv                  = var.mssv
  environment           = var.environment
  project_name          = var.project_name
  owner                 = var.owner
}

module "security" {
  source       = "../../modules/security"
  vpc_id       = module.network.vpc_id
  mssv         = var.mssv
  environment  = var.environment
  project_name = var.project_name
  owner        = var.owner
}

# Máy ảo 1: Public Instance
module "public_instance" {
  source                      = "../../modules/compute"
  instance_name               = var.public_instance_name
  ami_id                      = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = module.network.public_subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = [module.security.sg_id]
  associate_public_ip_address = true
  environment                 = var.environment
  project_name                = var.project_name
  owner                       = var.owner
}

# Máy ảo 2: Private Instance
module "private_instance" {
  source                      = "../../modules/compute"
  instance_name               = var.private_instance_name
  ami_id                      = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = module.network.private_subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = [module.security.sg_id]
  associate_public_ip_address = false
  environment                 = var.environment
  project_name                = var.project_name
  owner                       = var.owner
}
