#!/bin/bash
# Stop running web server service before installing updates

if systemctl is-active --quiet nginx; then
    sudo systemctl stop nginx
elif systemctl is-active --quiet httpd; then
    sudo systemctl stop httpd
elif systemctl is-active --quiet apache2; then
    sudo systemctl stop apache2
fi
