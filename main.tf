provider "aws" {
  region = "ap-south-1"
}

module "keypair" {
  source = "./modules/keypair"
}

module "security_group" {
  source = "./modules/security_group"
}

module "ec2" {
  source             = "./modules/ec2"
  key_name           = module.keypair.key_name
  security_group_id  = module.security_group.sg_id
}

