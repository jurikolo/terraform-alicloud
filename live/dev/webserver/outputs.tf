output "public_ip" {
  value       = module.webserver.public_ip
  description = "Webserver public IP address"
}

output "sg_id" {
  value = module.webserver.sg_id
  description = "Webserver security group ID"
}