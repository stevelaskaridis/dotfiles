#!/bin/bash

TMUXCONF='.tmux.conf'
OLD_PWD=$PWD

cd
if [ -e $TMUXCONF ] || [ -L $TMUXCONF ]; then
  if [ -e $TMUXCONF.old ] || [ -L $TMUXCONF.old ]; then
    echo "$TMUXCONF.old already exists. Exiting."
    exit -1
  else
    mv $TMUXCONF $TMUXCONF.old
  fi
fi

ln -s dotfiles/tmux/$TMUXCONF .

cd $OLD_PWD
