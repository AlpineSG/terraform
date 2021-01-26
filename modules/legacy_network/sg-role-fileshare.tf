resource "aws_security_group" "fileshare" {
  name = "fileshare"
  description = "fileshare Security Group"
  vpc_id = module.legacy_network.vpc_id

  ingress {
    description = "ssh to all-internal network"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }

  ingress {
    description = "web/http to all-internal network"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }

  ingress {
    description = "web-https to all-internal network"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }

  ingress {
    description = "nfs to all-internal network"
    from_port = 2049
    to_port = 2049
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }

    ingress {
    description = "nfs to all-internal network"
    from_port = 111
    to_port = 111
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
