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

output "vswitch_private_1" {
  description = "Private vSwitch 1a"
  value = alicloud_vswitch.vswitches[0].id
}

output "vswitch_private_2" {
  description = "Private vSwitch 1b"
  value = alicloud_vswitch.vswitches[1].id
}

output "vswitch_public_1" {
  description = "Public vSwitch 1a"
  value = alicloud_vswitch.vswitches[2].id
}

output "vswitch_public_2" {
  description = "Public vSwitch 1b"
  value = alicloud_vswitch.vswitches[3].id
}