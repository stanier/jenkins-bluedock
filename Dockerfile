FROM jenkinsci/blueocean:latest

USER root

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update \
    && apk add --update docker openrc jq moreutils py-pip gcc python3-dev \
    python-dev libffi-dev openssl-dev libc-dev make && rm -rf \
    /var/lib/apt/lists/* && pip install docker-compose

RUN rc-update add docker boot
