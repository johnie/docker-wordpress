#!/bin/bash

cp /var/www/wordpress/.env.example /var/www/wordpress/.env
sed -i 's/{MARIADB_PORT_3306_TCP_ADDR}/'"$MARIADB_PORT_3306_TCP_ADDR"'/g' /var/www/wordpress/.env

sed -i 's/SERVER_NAME/'"${SERVER_NAME}"'/g' /var/www/wordpress/.env

sed -i 's/SERVER_NAME/'"${SERVER_NAME}"'/g' /etc/nginx/conf.d/wordpress.conf

# Install Wordpress
cd /var/www/wordpress
composer install

# Run
service php7.0-fpm start && nginx -g "daemon off;"
