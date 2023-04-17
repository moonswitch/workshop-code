locals {
  env_name = format("%s-%s", lower(var.environment), lower(var.region))
}

data "aws_availability_zones" "azs" {}