FROM debian:jessie

RUN apt-get update && apt-get install -y curl \
                                         file

RUN curl -sSf https://static.rust-lang.org/rustup.sh | bash -s -- -y --channel=nightly
