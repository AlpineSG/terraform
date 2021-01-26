resource "aws_security_group" "sql" {
  name = "sql"
  description = "SQL Servers Security Group"
  vpc_id = module.legacy_network.vpc_id

  ingress {
    description = "MSQL to all-internal network"
    from_port = 51435
    to_port = 51440
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
