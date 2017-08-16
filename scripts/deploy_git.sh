#!/bin/bash

OLD_PWD=$PWD

cd ~
for f in .git*; do
  if [ -e $f ] || [ -L $f ]; then
    if [ -e $f.old ] || [ -L $f.old ]; then
      echo "$f.old already exists. Exiting."
    else
      mv $f $f.old
    fi

  fi

  ln -s dotfiles/git/$f .

done

cd $OLD_PWD
