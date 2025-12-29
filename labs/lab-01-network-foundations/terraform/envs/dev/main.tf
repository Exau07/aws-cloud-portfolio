module "vpc" {
  source     = "../../modules/vpc"
  name       = "portfolio-vpc"
  cidr_block = var.vpc_cidr
}

module "subnets" {
  source          = "../../modules/subnets"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}

module "igw" {
  source = "../../modules/igw"
  vpc_id = module.vpc.vpc_id
}

module "nat" {
  source            = "../../modules/nat"
  public_subnet_id  = module.subnets.public_subnet_ids[0]
}

module "routing" {
  source             = "../../modules/routing"
  vpc_id             = module.vpc.vpc_id
  igw_id             = module.igw.igw_id
  nat_id             = module.nat.nat_gateway_id
  public_subnet_ids  = module.subnets.public_subnet_ids
  private_subnet_ids = module.subnets.private_subnet_ids
}

module "security_groups" {
  source = "../../modules/security-groups"
  vpc_id = module.vpc.vpc_id
}