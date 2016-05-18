FROM sebglazebrook/alpine-neovim:latest

RUN apk add --update the_silver_searcher ncurses=6.0-r6 && rm -rf /var/cache/apk/*

RUN git clone https://github.com/sebglazebrook/dotfiles.git ~/.dotfiles

RUN ln -s ~/.dotfiles/vimrc ~/.vimrc

RUN ln -s ~/.dotfiles/vim ~/.vim

RUN mkdir -p $HOME/.config && \
    ln -s ~/.vim $HOME/.config/nvim

CMD ["bash"]

COPY fzf /usr/local/bin

ENV FZF_DEFAULT_COMMAND='ag -l --ignore-dir node_modules -g ""'

RUN apk add --update vim && rm -rf /var/cache/apk/*
RUN vim +PlugClean! +qall && vim +PlugInstall +qall
