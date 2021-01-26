resource "aws_security_group" "hub" {
  name = "hub"
  description = "Hub Security group"
  vpc_id = module.legacy_network.vpc_id

  ingress {
    description = "MSSQL to all-internal network"
    from_port = 51435
    to_port = 51440
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }

  ingress {
    description = "ftp to to all-internal network"
    from_port = 20
    to_port = 21
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }

  ingress {
    description = "smtp to all-internal network"
    from_port = 25
    to_port = 25
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }

  ingress {
    description = "smb to all-internal network"
    from_port = 445
    to_port = 445
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
