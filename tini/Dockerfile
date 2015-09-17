FROM alpine:3.2

ENTRYPOINT ["/sbin/tini"]
CMD ["sh"]

ENV TINI_PACKAGES="git gcc make cmake musl-dev"

RUN apk update && \
    apk add $TINI_PACKAGES &&\
    git clone https://github.com/krallin/tini.git /tmp/tini && \
    cd /tmp/tini && \
    cmake . && \
    make && \
    cp /tmp/tini/tini /sbin/tini && \
    rm -rf /tmp/tini && \
    apk del --purge -r $TINI_PACKAGES
