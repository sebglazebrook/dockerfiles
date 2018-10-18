FROM sebglazebrook/rust-nightly

RUN apt-get update && apt-get install --yes git

RUN git clone https://github.com/BurntSushi/ripgrep.git /code

WORKDIR /code

RUN cargo build --release

