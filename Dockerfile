FROM php:5.6.36-apache

LABEL Author="CoColi <CoColizdf@163.com>"

ADD src /var/www/html

RUN mv /var/www/html/ffffllllaaaagggg / \
    && docker-php-source extract\
    && cp /usr/src/php/php.ini-production /usr/local/etc/php/php.ini \
    && sed -i -e 's/display_errors.*/display_errors = Off/' /usr/local/etc/php/php.ini 
EXPOSE 80
