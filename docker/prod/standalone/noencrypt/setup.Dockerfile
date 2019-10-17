FROM alpine:latest

WORKDIR /certs

CMD cp -a /host/config/. /config/ \
    && secret=$(cat /config/secret) \
    && rm /host/config/secret