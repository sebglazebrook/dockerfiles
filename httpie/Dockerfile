FROM alpine:latest

RUN apk update && apk add \
      ca-certificates \
      python \
      py-pip \
      && rm -rf /var/cache/apk/* \
      && pip install httpie httpie-unixsocket

ENTRYPOINT [ "http"  ]
