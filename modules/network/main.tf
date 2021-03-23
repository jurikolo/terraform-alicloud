terraform {
  required_version = ">= 0.13"
}

resource "alicloud_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  vpc_name = var.vpc_name

//  ipv6 is not only unsupported in some regions, but also fails terraform execution if set to false
//  enable_ipv6 = false
}

resource "alicloud_vswitch" "vswitches" {
  count = length(var.vswitch_names)

  vpc_id            = alicloud_vpc.vpc.id
  zone_id           = element(var.vswitch_availability_zones, count.index)
  cidr_block        = element(var.vswitch_cidrs, count.index)
  vswitch_name      = element(var.vswitch_names, count.index)
}