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
    key = "dev/webserver/terraform.tfstate"
    region = "eu-central-1"
    encrypt = true
    profile = "terraform"
  }
}

provider "alicloud" { }

module "webserver" {
  source = "../../../modules/webserver"

  ecs_image_id = var.ecs_image_id
  ecs_instance_type = var.ecs_instance_type
  server_port = var.server_port
  ecs_public_key = var.ecs_public_key
  ecs_public_key_name = var.ecs_public_key_name
  network_remote_state_bucket = var.network_remote_state_bucket
  network_remote_state_key = var.network_remote_state_key
  network_remote_state_region = var.network_remote_state_region
  network_remote_state_profile = var.network_remote_state_profile
}