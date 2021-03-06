terraform {
  required_version = "~> 0.14.0"
  required_providers {
    alicloud = {
      source = "aliyun/alicloud"
      version = "1.119.1"
    }
  }
  backend "s3" {
    bucket = "jurikolo-alicloud"
    key = "dev/network/terraform.tfstate"
    region = "eu-central-1"
    encrypt = true
    profile = "terraform"
  }
}

provider "alicloud" { }

module "network" {
  source = "../../../modules/network"

  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
  vswitch_availability_zones = var.vswitch_availability_zones
  vswitch_names = var.vswitch_names
  vswitch_cidrs = var.vswitch_cidrs
}