FROM nginx:latest

COPY nginx.vhost /etc/nginx/conf.d/default.conf