#!/bin/bash

ln -s $(pwd)/misc/jq $HOME/.jq
ln -s $(pwd)/vim/vimrc $HOME/.vimrc

mkdir -p $HOME/.vim

ln -s $(pwd)/vim/colors $HOME/.vim/colors
ln -s $(pwd)/vim/autoload $HOME/.vim/autoload
