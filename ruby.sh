#!/bin/bash

#--------------------------------------------------------------------------------------------------
# > Ruby
#--------------------------------------------------------------------------------------------------

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# RVM completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
