output "web_sg_id" {
  description = "Web server security Group"

   value = aws_security_group.web.id
}

output "hub_sg_id" {
  description = "Web server security Group"

   value = aws_security_group.hub.id
}

output "sql_sg_id" {
  description = "Web server security Group"

   value = aws_security_group.sql.id
}

output "legacy_admin_sg_id" {
  description = "Web server security Group"

   value = aws_security_group.legacy_admin.id
}

output "production_subnet_id" {
  description = "Production subnet id"

   value = module.legacy_network.public_subnets[0]
}

output "legacy_network_vpc_id" {
  description = "Production VPC id"

   value = module.legacy_network.vpc_id

}
