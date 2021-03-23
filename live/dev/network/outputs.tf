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