FROM php:7.4-fpm

WORKDIR /var/www

ADD ./  /var/www

RUN chown -R www-data:www-data /var/www

