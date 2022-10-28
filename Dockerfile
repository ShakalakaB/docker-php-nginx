FROM php:7.4-fpm

WORKDIR /var/www

ADD ./  /var/www

RUN chown www-data:www-data /var/www

