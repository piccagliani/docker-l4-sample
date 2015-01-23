#!/bin/bash

service httpd start
service mysqld start

cd /opt/docker-l4-sample
mysql -u root < ./.docker/setup.sql
composer install
vendor/bin/codecept run