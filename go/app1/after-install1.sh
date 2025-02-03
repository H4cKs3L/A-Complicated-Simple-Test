#!/bin/bash
echo "Installation terminée, démarrage du service..."

cp /opt/my-go-app1/my-go-app1.service /etc/systemd/system/my-go-app1.service
systemctl enable my-go-app1.service
systemctl start my-go-app1.service