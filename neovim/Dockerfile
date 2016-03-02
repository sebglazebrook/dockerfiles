FROM gliderlabs/alpine:3.2

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk add --update git alpine-sdk libtool cmake automake m4 autoconf linux-headers unzip ncurses-dev && rm -rf /var/cache/apk/*

WORKDIR /app

RUN git clone https://github.com/neovim/unibilium.git && \
  cd unibilium && \
  make && \
  make install && \
  cd ../ && rm -rf unibilium

RUN git clone https://github.com/neovim/libtermkey.git && \
  cd libtermkey && \
  make && \
  make install && \
  cd ../ && rm -rf libtermkey

RUN git clone https://github.com/neovim/libvterm.git && \
  cd libvterm && \
  make && \
  make install && \
  cd ../ && rm -rf libvterm

ADD https://github.com/neovim/neovim/archive/v0.1.2.tar.gz /tmp

RUN cd /tmp && tar -zxvf v0.1.2.tar.gz && \
    cd neovim-0.1.2 && \
    cat contrib/local.mk.example | sed 's/# CMAKE_EXTRA_FLAGS += -DENABLE_JEMALLOC=OFF/CMAKE_EXTRA_FLAGS += -DENABLE_JEMALLOC=OFF/' > local.mk && \
    make && \
    make install && \
    cd /tmp && rm -rf * && \
    nvim --headless -c quit

ENV TERM xterm-256color

CMD ["nvim"]

RUN apk add --update the_silver_searcher && rm -rf /var/cache/apk/*

RUN git clone https://github.com/sebglazebrook/dotfiles.git ~/.dotfiles

RUN ln -s ~/.dotfiles/vim ~/.nvim

RUN rm -rf ~/.dotfiles/vim/plugged

RUN ln -s ~/.dotfiles/vimrc ~/.vimrc

 RUN mkdir -p $HOME/.config && \
     ln -s ~/.vim $HOME/.config/nvim
 #     ln -s ~/.vimrc $HOME/.config/nvim/init.vim

# RUN nvim -e -c PlugInstall -e -c q -e -c q

# https://github.com/docker/docker/issues/8710
