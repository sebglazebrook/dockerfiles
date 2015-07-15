FROM debian:jessie

RUN apt-get update && apt-get install -y curl \
                                         file

# The rust installation script uses the sudo command which
# doesn't exist for the root user. Here's a workaround
RUN echo '"$@"' > /usr/bin/sudo && chmod +x /usr/bin/sudo
RUN curl -sSf https://static.rust-lang.org/rustup.sh | bash -s -- -y --channel=nightly
