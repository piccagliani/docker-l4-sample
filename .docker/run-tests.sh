#!/bin/bash

service httpd start
service mysqld start

cd /opt/docker-l4-sample
chown -R 777 app/storage
mysql -u root < ./.docker/setup.sql

composer install
vendor/bin/codecept run --debug