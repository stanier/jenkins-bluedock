FROM jenkinsci/blueocean:latest

USER root

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk add --update docker docker-compose openrc jq moreutils
RUN rc-update add docker boot
