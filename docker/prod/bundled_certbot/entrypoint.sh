#!/bin/sh
# Substitute environment variables in the Nginx config
envsubst '$$DNS_NAME' < /etc/nginx/conf.d/app.conf.template > /etc/nginx/conf.d/app.conf

# Then start nginx
exec nginx -g 'daemon off;'
