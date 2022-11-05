FROM php:7.4-fpm

ENV GID=${GID}
ENV GROUP_NAME=${GROUP_NAME}

WORKDIR /var/www

ADD ./src/  /var/www

