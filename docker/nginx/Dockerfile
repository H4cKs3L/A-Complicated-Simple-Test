# Nginx Dockerfile
FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.crt /etc/ssl/certs/self-signed.crt
COPY nginx.key /etc/ssl/certs/self-signed.key
EXPOSE 443
