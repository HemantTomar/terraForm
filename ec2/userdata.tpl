#!/bin/bash
yum -y install httpd
echo "this is coming from terraform" >> /var/www/html/index.html
service httpd start
chkconfig httpd on
