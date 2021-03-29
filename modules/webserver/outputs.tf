output "public_ip" {
  value       = alicloud_instance.webserver-ecs.public_ip
  description = "Webserver public IP address"
}

output "sg_id" {
  value = alicloud_security_group.webserver-sg.id
  description = "Webserver security group ID"
}