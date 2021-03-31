terraform {
  required_version = "~> 0.14.0"
}

data "alicloud_images" "ecs_image" {
  owners = "system"
  name_regex = "^aliyun_2"
  most_recent = true
  instance_type = var.ecs_instance_type
}

resource "alicloud_security_group" "webserver-sg" {
  name = "webserver-sg"
  description = "Webserver SG"
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
}

resource "alicloud_security_group_rule" "webserver-sg-ingress-rule-1" {
  ip_protocol = "tcp"
  security_group_id = alicloud_security_group.webserver-sg.id
  type = "ingress"
  port_range = "${var.server_port}/${var.server_port}"
  policy = "accept"
  cidr_ip = "0.0.0.0/0"
  description = "Allow web inbound traffic"
}

//resource "alicloud_security_group_rule" "webserver-sg-ingress-rule-2" {
//  ip_protocol = "tcp"
//  security_group_id = alicloud_security_group.webserver-sg.id
//  type = "ingress"
//  port_range = "${local.ssh_port}/${local.ssh_port}"
//  policy = "accept"
//  cidr_ip = "0.0.0.0/0"
//  description = "Allow SSH inbound traffic"
//}

resource "alicloud_security_group_rule" "webserver-sg-egress-rule-1" {
  ip_protocol = "tcp"
  security_group_id = alicloud_security_group.webserver-sg.id
  type = "egress"
  port_range = "${local.http_port}/${local.http_port}"
  policy = "accept"
  cidr_ip = "0.0.0.0/0"
  description = "Allow HTTP outboud traffic"
}

resource "alicloud_security_group_rule" "webserver-sg-egress-rule-2" {
  ip_protocol = "tcp"
  security_group_id = alicloud_security_group.webserver-sg.id
  type = "egress"
  port_range = "${local.https_port}/${local.https_port}"
  policy = "accept"
  cidr_ip = "0.0.0.0/0"
  description = "Allow HTTPS outbound traffic"
}

resource "alicloud_key_pair" "webserver-kp" {
  key_name = var.ecs_public_key_name
  public_key = var.ecs_public_key
}

resource "alicloud_instance" "webserver-ecs" {
  image_id = data.alicloud_images.ecs_image.images[0].id
  instance_type = var.ecs_instance_type
  security_groups = alicloud_security_group.webserver-sg.*.id
  internet_max_bandwidth_in = 1
  internet_max_bandwidth_out = 1
  vswitch_id = data.terraform_remote_state.network.outputs.vswitch_public_1
  key_name = var.ecs_public_key_name

  user_data = templatefile("${path.module}/user-data.tpl", {
    server_port = var.server_port
  })
}

data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket  = var.network_remote_state_bucket
    key     = var.network_remote_state_key
    region  = var.network_remote_state_region
    profile = var.network_remote_state_profile
  }
}

locals {
  http_port  = 80
  https_port = 443
  ssh_port   = 22
}