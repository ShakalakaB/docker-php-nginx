FROM php:7.4-fpm

ARG UID
ARG GID
ARG USER_NAME
ARG GROUP_NAME

ENV UID=${UID}
ENV USER_NAME=${USER_NAME}

ENV GID=${GID}
ENV GROUP_NAME=${GROUP_NAME}

WORKDIR /var/www

RUN addgroup -gid ${GID} --system ${GROUP_NAME}
RUN adduser --system --ingroup ${GROUP_NAME} -shell /bin/sh --uid ${UID} --disabled-password ${USER_NAME}

ADD ./src/  /var/www

RUN chown -R ${USER_NAME}:${GROUP_NAME} /var/www

USER ${USER_NAME}
