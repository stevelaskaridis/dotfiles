#!/bin/bash

BASH_STARTUP='.bashrc'

cd ~
if [ -e $BASH_STARTUP ] || [ -L $BASH_STARTUP ]; then
  mv $BASH_STARTUP $BASH_STARTUP.old
fi

ln -s dotfiles/$BASH_STARTUP .

