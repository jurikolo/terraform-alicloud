output "vpc_id" {
  value       = module.network.vpc_id
  description = "Custom VPC ID"
}

output "router_id" {
  value = module.network.router_id
  description = "Custom VPC router ID"
}

output "route_table_id" {
  value = module.network.route_table_id
  description = "Custom VPC route table ID"
}

output "vswitch_private_1" {
  description = "Private vSwitch 1a"
  value = module.network.vswitch_private_1
}

output "vswitch_private_2" {
  description = "Private vSwitch 1b"
  value = module.network.vswitch_private_2
}

output "vswitch_public_1" {
  description = "Public vSwitch 1a"
  value = module.network.vswitch_public_1
}

output "vswitch_public_2" {
  description = "Public vSwitch 1b"
  value = module.network.vswitch_public_2
}