# VPC

data "aws_availability_zones" "available" {
    state = "available"
}

locals {
    availability_zones = data.aws_availability_zones.available.names
}

locals {
    public_subnets = [
        for az in local.availability_zones:
           "${var.cidr_prefix}.${index(local.availability_zones, az)}.0/24"
    ]
}

module "legacy_network" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.6.0"
  name                 = var.name
  cidr          = "${var.cidr_prefix}.0.0/16"
  azs                  = data.aws_availability_zones.available.names
  public_subnets       = local.public_subnets
  enable_dns_hostnames = true
}
