locals {
  env_name = format("%s-%s-%s", lower(var.environment), lower(var.region), lower(data.random_pet.this.id))
}

data "aws_availability_zones" "azs" {}

resource "random_pet" "this" {}