output "vpc_id" {
  value       = alicloud_vpc.vpc.id
  description = "Custom VPC ID"
}

output "router_id" {
  value = alicloud_vpc.vpc.router_id
  description = "Custom VPC router ID"
}

output "route_table_id" {
  value = alicloud_vpc.vpc.route_table_id
  description = "Custom VPC route table ID"
}