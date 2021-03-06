#!/usr/bin/env bash

yum install -y httpd vim php php-common
rm -rf /var/www/html
ln -fs /vagrant /var/www/html

cp /vagrant/php-simple-proxy/ba-simple-proxy.php /vagrant/index.php
sed -i 's/index.html/index.php/g' /etc/httpd/conf/httpd.conf
chkconfig httpd on
service httpd start
