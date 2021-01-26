resource "aws_security_group" "pfsense" {
  name = "pfsense"
  description = "pfsense Security Group"
  vpc_id = module.legacy_network.vpc_id

  ingress {
    description = "pfsense to all-internal network"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.all-internal
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.ALL-NETWORKS
  }
}
