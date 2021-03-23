terraform {
  required_version = ">= 0.13"
}

resource "alicloud_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  vpc_name = var.vpc_name

//  ipv6 is not only unsupported in some regions, but also fails terraform execution if set to false
//  enable_ipv6 = false
}