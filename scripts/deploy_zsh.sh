#!/bin/bash

ZSH_STARTUP='.zshrc'
OLD_PWD=$PWD

cd ~
if [ -e $ZSH_STARTUP ] || [ -L $ZSH_STARTUP ]; then
  if [ -e $ZSH_STARTUP.old ] || [ -L $ZSH_STARTUP.old ]; then
    echo "$ZSH_STARTUP.old already exists. Exiting."
    exit -1
  else
    mv $ZSH_STARTUP $ZSH_STARTUP.old
    sed -i "1i source ~/$ZSH_STARTUP.old" dotfiles/$ZSH_STARTUP
  fi
fi

ln -s dotfiles/$ZSH_STARTUP .

cd $OLD_PWD
