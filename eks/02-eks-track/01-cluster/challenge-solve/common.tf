locals {
  env_name = format("%s-%s-%s", lower(var.environment), lower(var.region), lower(data.random_pet.this.id))
  vpc_cidr = "10.0.0.0/16"
}

data "aws_availability_zones" "azs" {}

resource "random_pet" "this" {}