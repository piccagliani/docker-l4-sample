FROM centos:6

MAINTAINER @piccagliani

RUN cp -p /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN echo ZONE="Asia/Tokyo" > /etc/sysconfig/clock
RUN echo UTC="false" >> /etc/sysconfig/clock
RUN source /etc/sysconfig/clock

RUN yum update -y
RUN yum install -y git

RUN rpm -Uvh http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/6/i386/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

# PHP 5.6
RUN yum install -y --enablerepo=remi --enablerepo=remi-php56 php php-pdo php-mysql php-mbstring php-mcrypt

# Composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# MySQL
RUN rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
RUN yum install -y mysql-community-server

# Add config files
ADD httpd.conf /etc/httpd/conf/httpd.conf
ADD my.cnf /etc/my.cnf
ADD php.ini /etc/php.ini

# Apache
EXPOSE 80

CMD ["/bin/bash"]
