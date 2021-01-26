resource "aws_security_group" "legacy_admin" {
  name = "legacy_admin"
  description = "Legacy Security Group for admin"
  vpc_id = module.legacy_network.vpc_id


ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.0.207.85/32"]
 description = "Dev-DA"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["54.81.66.250/32"]
 description = "Dev-Master"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["98.196.172.174/32"]
 description = "TBD"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["63.224.64.1/32"]
 description = "SR home"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["34.212.127.109/32"]
 description = "awswest2ad8"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.72.249.161/32"]
 description = "awseast1dd21"
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
 cidr_blocks = ["54.172.50.190/32"]
 description = "Dev-SR"
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
 cidr_blocks = ["209.181.69.21/32"]
 description = "DA Home"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.2.89.3/32"]
 description = "Dev-GG"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.70.86.106/32"]
 description = "awseast1dd23"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.206.185.240/32"]
 description = "Dev-JR-W2016"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["3.226.130.144/32"]
 description = "Dev-LS"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["10.0.0.60/32"]
 description = "Dev-Master Private"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["18.232.223.107/32"]
 description = "teamcity"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["10.0.2.147/32"]
 description = "teamcity private"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.54.145.81/32"]
 description = "Dev-ZN"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.1.228.123/32"]
 description = "Dock Womble"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["52.206.124.179/32"]
 description = "Dev-BR"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["54.167.210.217/32"]
 description = "us-east-1 main ec vpc"
 }

ingress {
 from_port = 0
 to_port = 0
 protocol = "-1"
 cidr_blocks = ["3.20.233.141/32"]
 description = "carbide-8"
 }

ingress {
 from_port = 3389
 to_port = 3389
 protocol = "tcp"
 cidr_blocks = ["104.51.52.226/32"]
 description = "Basheer-Home"
 }

ingress {
 from_port = 3389
 to_port = 3389
 protocol = "tcp"
 cidr_blocks = ["184.205.57.211/32"]
 description = "smalmberg"
 }

ingress {
 from_port = 3389
 to_port = 3389
 protocol = "tcp"
 cidr_blocks = ["24.254.161.51/32"]
 description = "Zack Home"
 }


ingress {
 from_port = 3389
 to_port = 3389
 protocol = "tcp"
 cidr_blocks = ["76.25.103.185/32"]
 description = "Logan Home"
 }

ingress {
 from_port = 3389
 to_port = 3389
 protocol = "tcp"
 cidr_blocks = ["24.22.221.10/32"]
 description = "Pramod Home"
 }

}
