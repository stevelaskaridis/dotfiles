#!/bin/bash

OLD_PWD=$PWD

cd ~
for f in .tmux*; do
  if [ -e $f ] || [ -L $f ]; then
    if [ -e $f.old ] || [ -L $f.old ]; then
      echo "$f.old already exists. Exiting."
    else
      mv $f $f.old
    fi

  fi

  ln -s dotfiles/tmux/$f .

done

cd $OLD_PWD
