module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"

  name = "vpc-${local.env_name}"
  cidr = "10.0.0.0/16"

  azs             = [data.aws_availability_zones.azs.names[0], data.aws_availability_zones.azs.names[1], data.aws_availability_zones.azs.names[2]]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}