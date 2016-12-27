FROM debian:jessie

RUN apt-get update && \
    apt-get install --fix-missing -y clang \
                                     curl \
                                     file \
                                     libssl-dev

RUN curl -sSf https://static.rust-lang.org/rustup.sh | bash -s -- -y --channel=nightly --disable-sudo
