#!/bin/bash

DOTFILES_DIR="dotfiles"

cd ~
if [ -d $DOTFILES_DIR ]; then
  mv $DOTFILES_DIR $DOTFILES_DIR.old
fi

cp -rv /tmp/current/ $DOTFILES_DIR
