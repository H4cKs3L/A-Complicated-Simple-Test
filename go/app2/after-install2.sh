#!/bin/bash
echo "Installation terminée, démarrage du service..."

cp /opt/my-go-app2/my-go-app2.service /etc/systemd/system/my-go-app2.service
systemctl enable my-go-app2.service
systemctl start my-go-app2.service