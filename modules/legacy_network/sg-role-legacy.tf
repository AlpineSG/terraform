resource "aws_security_group" "legacy" {
  name = "legacy"
  description = "Legacy Security Group"
  vpc_id = module.legacy_network.vpc_id

ingress {
 from_port = 80
 to_port = 80
 protocol = "tcp"
 cidr_blocks = var.ALL-NETWORKS
 description = "TBD"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "tcp"
 cidr_blocks = ["100.16.162.106/32", "24.241.205.178/32",  "71.245.164.218/32"]
 description = "TBD"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "tcp"
 cidr_blocks = ["63.225.110.177/32"]
 description = "Bruce office"
 }

ingress {
 from_port = 51435
 to_port = 51440
 protocol = "tcp"
 cidr_blocks = ["10.0.0.0/8", "107.21.15.140/32", "107.23.44.22/32", "107.23.71.218/32", "108.180.222.150/32", "54.69.72.221/32"]
 description = "TBD"
 }

ingress {
 from_port = 51435
 to_port = 51440
 protocol = "tcp"
 cidr_blocks = ["107.23.60.46/32"]
 description = "awseast1dD1"
 }

ingress {
 from_port = 51434
 to_port = 51440
 protocol = "tcp"
 cidr_blocks = ["52.2.171.147/32", "52.21.131.80/32", "52.86.26.188/32"]
 description = "TBD"
 }



ingress {
 from_port = 51434
 to_port = 51440
 protocol = "tcp"
 cidr_blocks = ["54.172.157.222/32"]
 description = "awseast1dD6"
 }

 ingress {
 from_port = 51434
 to_port = 51440
 protocol = "tcp"
 cidr_blocks = ["54.88.144.9/32"]
 description = "awseast1dD7"
 }

ingress {
 from_port = 51434
 to_port = 51440
 protocol = "tcp"
 cidr_blocks = ["52.206.124.179/32"]
 description = "Dev-BR"
 }

ingress {
 from_port = 51434
 to_port = 51440
 protocol = "tcp"
 cidr_blocks = ["35.170.1.186/32"]
 description = "Dev-SM"
 }

ingress {
 from_port = 51434
 to_port = 51440
 protocol = "tcp"
 cidr_blocks = ["18.232.223.107/32"]
 description = "Docker Host on TeamCity"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["10.0.0.0/8", "129.33.204.13/32", "143.112.144.25/32", "198.89.160.140/32", "3.208.68.200/32", "50.16.133.54/32", "52.1.162.34/32", "52.6.224.204/32", "67.129.68.58/32"]
 description = "TBD"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["34.228.139.94/32"]
 description = "awseast1dD22"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["34.199.101.119/32"]
 description = "awseast1dfs1"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["18.211.173.60/32"]
 description = "awseast1dd5_New"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.1.228.123/32"]
 description = "Dock Womble"
 }

ingress {
 from_port = 25
 to_port = 25
 protocol = "tcp"
 cidr_blocks = var.ALL-NETWORKS
 description = "TBD"
 }


ingress {
 from_port = 20
 to_port = 21
 protocol = "tcp"
 cidr_blocks = var.ALL-NETWORKS
 description = "TBD"
 }


ingress {
 from_port = 3389
 to_port = 3389
 protocol = "tcp"
 cidr_blocks = ["10.0.0.0/8", "108.180.222.150/32", "108.185.32.214/32", "24.51.180.137/32", "52.6.224.204/32", "63.225.110.177/32", "98.199.56.24/32"]
 description = "TBD"
 }

ingress {
 from_port = 3389
 to_port = 3389
 protocol = "tcp"
 cidr_blocks = ["3.208.68.200/32"]
 description = "dev-jr-1"
 }

ingress {
 from_port = 445
 to_port = 445
 protocol = "tcp"
 cidr_blocks = ["10.0.0.0/24"]
 description = "TBD"
 }


ingress {
 from_port = 443
 to_port = 443
 protocol = "tcp"
 cidr_blocks = var.ALL-NETWORKS
 description = "TBD"
 }


ingress {
 from_port = 61021
 to_port = 61025
 protocol = "tcp"
 cidr_blocks = var.ALL-NETWORKS
 description = "TBD"
 }
}
