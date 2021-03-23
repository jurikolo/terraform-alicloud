variable "vpc_cidr" {
  description = "CIDR block for custom VPC"
  type        = string
}

variable "vpc_name" {
  description = "Custom VPC name"
  type        = string
  default     = "custom-vpc"
}