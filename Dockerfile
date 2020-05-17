FROM jenkinsci/blueocean:latest

USER root

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update \
    && apk add --update docker openrc jq moreutils py-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip install docker-compose

RUN rc-update add docker boot
