output "private_subnets" {
  value = module.vpc.private_subnets
}

output "private_subnet_cidr_blocks" {
  value = module.vpc.private_subnets_cidr_blocks
}