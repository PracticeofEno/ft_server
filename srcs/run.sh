#!/bin/bash

chmod 775 /run.sh
chown -R www-data:www-data /var/www/
chmod -R 755 /var/www

openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Busan/L=Busan/O=42Seoul/OU=Park/CN=localhost" -keyout localhost.dev.key -out localhost.dev.crt
mv localhost.dev.key etc/ssl/private/
mv localhost.dev.crt etc/ssl/certs/
chmod 600 etc/ssl/private/localhost.dev.key etc/ssl/certs/localhost.dev.crt

cp -rp /tmp/default /etc/nginx/sites-available/

tar -xvf latest.tar.gz
mv wordpress/ var/www/html/
chown -R www-data:www-data /var/www/html/wordpress
cp -rp /tmp/wp-config.php /var/www/html/wordpress

service mysql start
echo "create database if not exists wordpress;" | mysql -u root --skip-password
echo "create user if not exists 'kkkk' identified by 'kkkk';" | mysql -u root --skip-password
echo "grant all privileges on wordpress.* to 'kkkk' with grant option;" | mysql -u root --skip-password

tar -xvf phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages phpmyadmin
mv phpmyadmin /var/www/html/
rm phpMyAdmin-5.0.2-all-languages.tar.gz
cp -rp /tmp/config.inc.php /var/www/html/phpmyadmin/

service nginx start
service php7.3-fpm start

while true;
	do echo "still live";
	sleep 600;
done

