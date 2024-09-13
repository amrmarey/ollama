#!/bin/bash

openssl req -x509 -newkey rsa:4096 -nodes -out /etc/nginx/ssl/cert/fullchain.pem -keyout /etc/nginx/ssl/cert/privkey.pem -days 3650
echo "Generated certificates:"
ls /etc/nginx/ssl/cert/