#!/bin/bash

VIMRC='.vimrc'
OLD_PWD=$PWD

cd ~
if [ -e $VIMRC ] || [ -L $VIMRC ]; then
  if [ -e $VIMRC.old ] || [ -L $VIMRC.old ]; then
    echo "$VIMRC.old already exists. Exiting."
    exit -1
  else
    mv $VIMRC $VIMRC.old
  fi
fi

ln -s dotfiles/vim/$VIMRC .

# install vundle
if [ ! -e ~/.vim/bundle/Vundle.vim ];then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# install monokai theme
if [ ! -e ~/.vim/colors/monokai.vim ];then
    mkdir -p ~/.vim/colors
    wget https://raw.githubusercontent.com/crusoexia/vim-monokai/master/colors/monokai.vim -O ~/.vim/colors/monokai.vim
fi

cd $OLD_PWD
