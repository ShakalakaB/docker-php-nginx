FROM php:7.4-fpm

#ARG UID
#ARG GID

#ENV UID=${UID}
ENV UID=1000
ENV USER_NAME=ec2-user
#ENV GID=${GID}
ENV GID=1000
ENV GROUP_NAME=ec2-user

WORKDIR /var/www

RUN addgroup -gid ${GID} --system ${GROUP_NAME}
#RUN addgroup -g 1000 --system ec2-user
RUN adduser --system --ingroup ${GROUP_NAME} -shell /bin/sh --uid ${UID} --disabled-password ${USER_NAME}
#RUN #adduser -G ec2-user --system -D -s /bin/sh -u 1000 ec2-user

ADD ./  /var/www

RUN chown -R ${USER_NAME}:${GROUP_NAME} /var/www

USER ${USER_NAME}

