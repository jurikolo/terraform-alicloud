variable "vpc_cidr" {
  description = "CIDR block for custom VPC"
  type        = string
}

variable "vpc_name" {
  description = "Custom VPC name"
  type        = string
  default     = "custom-vpc-1"
}

variable "vswitch_availability_zones" {
  description = "List of available zones for vSwitches"
  type        = list(string)
}

variable "vswitch_names" {
  description = "List of vSwitch names"
  type        = list(string)
}

variable "vswitch_cidrs" {
  description = "List of CIDR blocks used to launch new vSwtches"
  type        = list(string)
}

variable "custom_public_rt_name" {
  description = "Custom public route table name"
  type        = string
  default     = "custom-public-rt-1"
}

variable "custom_private_rt_name" {
  description = "Custom private route table name"
  type        = string
  default     = "custom-private-rt-1"
}