resource "aws_security_group" "tc-agent" {
  name = "tc-agent"
  description = "TeamCity Agent Security Group"
  vpc_id = module.legacy_network.vpc_id

  ingress {
    description = "ssh to all-internal network"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = var.ALL-NETWORKS
  }
}
