variable "vpc_cidr" {
  description = "CIDR block for custom VPC"
  type        = string
}

variable "vpc_name" {
  description = "Custom VPC name"
  type        = string
  default     = "custom-vpc"
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

