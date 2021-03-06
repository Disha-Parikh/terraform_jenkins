provider "aws"{
  region = var.region
  access_key = var.access_key
  secret_key = var.secret
}

module "ec2"{
  source = "./ec2"
  ami = var.ami
  instance_type = var.instance_type
  private_az = var.private_az
  public_az = var.public_az
  public_subnet = module.vpc.public_subnet
  sg = module.vpc.sg
  key_name = var.key_name
  public_key_path = var.path

}

module "vpc" {
  source = "./vpc"
  private_az = var.private_az
  private_cidr = var.private_cidr
  public_az = var.public_az
  public_cidr = var.public_cidr
  vpc_cidr = var.vpc_cidr
}