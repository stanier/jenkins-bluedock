FROM jenkinsci/blueocean:latest

USER root

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update \
    && apk add --update docker docker-compose openrc jq moreutils\
    && rm -rf /var/lib/apt/lists/*

RUN rc-update add docker boot
