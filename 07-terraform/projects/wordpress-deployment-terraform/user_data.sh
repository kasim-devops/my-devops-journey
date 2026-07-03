#!/bin/bash
apt update -y
apt install -y apache2 php php-mysql mysql-server wget unzip

# Download WordPress
wget https://wordpress.org/latest.zip -P /tmp
unzip /tmp/latest.zip -d /var/www/html/
chown -R www-data:www-data /var/www/html/wordpress

# Start and enable Apache
systemctl start apache2
systemctl enable apache2