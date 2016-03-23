#!/bin/bash

cd ~
for f in .git*; do
  if [ -e $f ] || [ -L $f ]; then
    mv $f $f.old
  fi

  ln -s dotfiles/git/$f .

done
