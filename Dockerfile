FROM jenkinsci/blueocean:latest

RUN apk add --update docker docker-compose openrc jq moreutils
RUN rc-update add docker boot
