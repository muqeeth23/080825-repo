resource "aws_subnet" "this" {
  vpc_id = var.vpc_id
  cidr_block = var.sn_cidr
  map_public_ip_on_launch = var.map_public_ip
  availability_zone = var.sn_az
  tags = {
    "Name" = var.subnet_name
    env = var.subnet_env
  }
}