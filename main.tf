provider "aws" {
  region = var.aws_region
}

module "network" {
  source               = "./modules/network"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  availability_zone    = var.availability_zone
}

module "ec2" {
  source            = "./modules/ec2"
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  key_name          = var.key_name
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.network.sg_id
}
