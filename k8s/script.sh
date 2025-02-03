#!/bin/bash
# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ttt.skfs2m.com.key -out ttt.skfs2m.com.crt -subj "/CN=ttt.skfs2m.com/O=MyOrg"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
kubectl create secret tls ttt-skfs2m-com-tls --cert=ttt.skfs2m.com.crt --key=ttt.skfs2m.com.key
kubectl apply -f deploy_api1.yml
# kubectl apply -f deploy_api2.yml
# kubectl apply -f deploy_frontend.yml
# kubectl apply -f ingress.yml