#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y # Update all installed packages to their latest versions
yum install -y httpd # Install Apache web server (httpd package)
systemctl start httpd # Start the Apache service immediately
systemctl enable httpd # Enable Apache to start automatically on system boot
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html # Create a simple HTML page showing the server hostname