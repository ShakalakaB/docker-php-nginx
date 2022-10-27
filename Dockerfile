FROM     php:7.4-fpm

WORKDIR  /var/www

COPY      ./  /var/www

USER root

