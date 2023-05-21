module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.13.1"

  cluster_name                   = local.env_name
  cluster_version                = "1.24"
  cluster_endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = concat(module.vpc.public_subnets, module.vpc.private_subnets)

  cluster_addons = {
    vpc-cni    = {}
    coredns    = {}
    kube-proxy = {}
  }

  manage_aws_auth_configmap = true
}