#!/bin/bash

ZSH_STARTUP='.zshrc'

cd ~
if [ -e $ZSH_STARTUP ] || [ -L $ZSH_STARTUP ]; then
  mv $ZSH_STARTUP $ZSH_STARTUP.old
fi

ln -s dotfiles/$ZSH_STARTUP .

