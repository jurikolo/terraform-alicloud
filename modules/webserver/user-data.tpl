#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo sed -i 's/Listen 80/Listen ${server_port}/g' /etc/httpd/conf/httpd.conf
export sourceip=`curl -X POST https://source-ip.jurikolo.name`

sudo echo "Source IP: $sourceip" > /var/www/html/index.html

sudo systemctl enable httpd
sudo systemctl start httpd