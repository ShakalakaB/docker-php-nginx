FROM php:7.4-fpm

ENV UID=1000
ENV USER_NAME=ec2-user

ENV GID=1000
ENV GROUP_NAME=ec2-user

WORKDIR /var/www

RUN addgroup -gid ${GID} --system ${GROUP_NAME}
RUN adduser --system --ingroup ${GROUP_NAME} -shell /bin/sh --uid ${UID} --disabled-password ${USER_NAME}

ADD ./src/  /var/www

RUN chown -R ${USER_NAME}:${GROUP_NAME} /var/www

USER ${USER_NAME}

