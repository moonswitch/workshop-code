locals {
  env_name = format("%s-%s-%s", lower(var.environment), lower(var.region), lower(var.identifier))
}

data "aws_availability_zones" "azs" {}