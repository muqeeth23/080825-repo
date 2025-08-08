module "vpc-1-module" {
  source = "./modules/vpc-module"
  vpc_cidr = "10.0.0.0/16"
  vpc_env = "dev-env"
  vpc_name = "dev-vpc"
}

module "sn-1-module" {
    source = "./modules/subnet-module"
    subnet_name = "vpc-1-sn-1" 
    sn_az = "ap-south-1a"
    sn_cidr = "10.0.0.0/24"
    vpc_id = module.vpc-1-module.vpc_id_op
    map_public_ip = true
    subnet_env = "dev-env"
  
}

module "sn-2module" {
    source = "./modules/subnet-module"
    subnet_name = "vpc-1-sn-2"
    sn_az = "ap-south-1b"
    sn_cidr = "10.0.1.0/24"
    vpc_id = module.vpc-1-module.vpc_id_op
    map_public_ip = true
    subnet_env = "dev-env"
  
}


