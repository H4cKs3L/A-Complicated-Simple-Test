#!/bin/bash
sudo dnf install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo mkdir -p /etc/ssl/nginx
sudo openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/nginx/nginx.key -out /etc/ssl/nginx/nginx.crt -days 365 -nodes
