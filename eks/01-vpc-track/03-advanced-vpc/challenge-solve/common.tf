locals {
  env_name = format("%s-%s", lower(var.environment), lower(var.region))
  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.azs.names, 0, 3)
}

data "aws_availability_zones" "azs" {}