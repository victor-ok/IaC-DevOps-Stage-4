provider "aws" {
  region = var.aws_region
}

module "security_group" {
  source = "./modules/security-group"
  sg_name = module.security_group.sg_name
  vpc_id = var.vpc_id
}

module "ec2_instance" {
  source            = "./modules/ec2"
  security_group = module.security_group.security_group_id
  instance_type     = var.instance_type
  ami_id = module.ec2_instance.ami
#   security_group_id = module.security_group.security_group_id
  key_name         = var.key_name
}

module "route53" {
  source      = "./modules/route53"
  domain_name = var.domain_name
  instance_ip = module.ec2.instance_ip
  zone_id = module.route53.zone_id
}

module "inventory" {
  source      = "./modules/inventory"
#   instance_ip = module.ec2_instance.instance_ip
}
