#!/bin/bash

# Update package lists
apt update

# Install MariaDB server
apt install -y mariadb-server

# Secure the installation
mysql_secure_installation

# Install PHP and Apache web server
apt install -y php libapache2-mod-php apache2

# Install phpMyAdmin
apt install -y phpmyadmin

# Configure Apache to use phpMyAdmin
echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf

# Restart Apache web server
systemctl restart apache2
