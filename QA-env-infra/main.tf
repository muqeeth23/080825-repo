module "qa-vpc" {
    source = "../modules/vpc-module"
     vpc_cidr = var.vpc_cidr
    vpc_env = var.vpc_env
    vpc_name = var.vpc_name
}