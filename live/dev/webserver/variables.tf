variable "ecs_image_id" {
  description = "ECS image ID"
  type        = string
}

variable "ecs_instance_type" {
  description = "ECS instance type"
  type        = string
}

variable "ecs_public_key" {
  description = "Public key used to access ECS via SSH"
  type        = string
}

variable "ecs_public_key_name" {
  description = "Public key name used to access ECS via SSH"
  type        = string
}

  variable "server_port" {
  description = "Webserver port to listen for incoming traffic"
  type        = string
}

variable "network_remote_state_bucket" {
  description = "S3 bucket name where network remote state is stored"
  type        = string
}

variable "network_remote_state_key" {
  description = "S3 bucket key where network remote state is stored"
  type        = string
}

variable "network_remote_state_region" {
  description = "Region where S3 bucket with network remote state exists"
  type        = string
}

variable "network_remote_state_profile" {
  description = "AWS profile to use to connect to S3 bucket with network remote state"
  type        = string
}