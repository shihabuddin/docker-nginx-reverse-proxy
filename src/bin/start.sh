#!/usr/bin/env bash
envsubst '\$PROXY_HOST' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
nginx -g "daemon off;"
