#!/bin/bash

#--------------------------------------------------------------------------------------------------
# > Ruby
#--------------------------------------------------------------------------------------------------

# RVM
RVM_PATH=$HOME/.rvm/
if [ -d $RVM_PATH ]; then
    export PATH="$PATH:$RVM_PATH/bin" # Add RVM to PATH for scripting
    source $HOME/.rvm/scripts/rvm

    # RVM completion
    [[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
fi
