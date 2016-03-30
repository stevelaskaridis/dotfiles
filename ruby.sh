#!/bin/bash

#--------------------------------------------------------------------------------------------------
# > Ruby
#--------------------------------------------------------------------------------------------------

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source $HOME/.rvm/scripts/rvm

# RVM completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
