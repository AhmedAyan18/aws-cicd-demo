#!/bin/bash
# Install Web Server (Nginx or Apache) depending on OS distribution

if command -v yum &> /dev/null; then
    echo "Using YUM package manager..."
    sudo yum update -y
    sudo yum install -y nginx || sudo yum install -y httpd
elif command -v apt-get &> /dev/null; then
    echo "Using APT package manager..."
    sudo apt-get update -y
    sudo apt-get install -y nginx || sudo apt-get install -y apache2
fi
