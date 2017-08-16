#!/bin/bash

BASH_STARTUP='.bashrc'
OLD_PWD=$PWD

cd ~
if [ -e $BASH_STARTUP ] || [ -L $BASH_STARTUP ]; then
  if [ -e $BASH_STARTUP.old ] || [ -L $BASH_STARTUP.old ]; then
    echo "$BASH_STARTUP.old already exists. Exiting."
    exit -1
  else
    mv $BASH_STARTUP $BASH_STARTUP.old
    sed -i "1i source ~/$BASH_STARTUP.old" dotfiles/$BASH_STARTUP
  fi
fi

ln -s dotfiles/$BASH_STARTUP .

cd $OLD_PWD
