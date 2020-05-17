FROM jenkinsci/blueocean:latest

USER root

RUN apk add --update docker docker-compose openrc jq moreutils
RUN rc-update add docker boot
