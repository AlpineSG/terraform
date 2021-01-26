resource "aws_security_group" "VPN" {
  name = "VPN"
  description = "VPN Security Group"
  vpc_id = module.legacy_network.vpc_id



  ingress {
    description = "Allow VPN"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.all-internal
  }

  ingress {
    description = "Allow VPN client subnet - inbound"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.VPN-SERVER-CIDR-block
  }

  egress {
    description = "Allow VPN client subnet - oubound"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.VPN-SERVER-CIDR-block
  }
}
