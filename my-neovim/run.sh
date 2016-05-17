#!/bin/bash

docker create -v /root/.vim/plugged -v /root/.fzf --name vim-data gliderlabs/alpine:latest /bin/true

docker run -ti -v /Users/sebastianglazebrook/dockerfiles/my-neovim:/app --volumes-from vim-data sebglazebrook/my-neovim bash
