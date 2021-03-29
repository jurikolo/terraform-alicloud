# General
This module creates following resources:
* VPC
* 2 private subnets
* 2 public subnets

At the moment it's not possible to reduce or increase amount of subnets using variables. 
To modify amount of subnets, modify outputs.tf file in modules and project directory.