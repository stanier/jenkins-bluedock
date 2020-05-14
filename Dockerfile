FROM jenkinsci/blueocean:latest

RUN apk add --update docker openrc
RUN rc-update add docker boot
