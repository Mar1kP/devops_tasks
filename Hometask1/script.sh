#!/bin/bash
sudo yum update -y
sudo yum install epel-release -y
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
cp -f /vagrant/index.html /usr/share/nginx/html/index.html
sudo systemctl restart nginx