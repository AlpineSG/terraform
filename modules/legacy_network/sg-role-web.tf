resource "aws_security_group" "web" {
  name = "web"
  description = "Web Servers Security Group"
  vpc_id = module.legacy_network.vpc_id

  ingress {
    description = "http"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = var.all-internal
  }

  ingress {
    description = "https"
    from_port = 443
    to_port = 443
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
