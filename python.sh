#!/bin/bash

#--------------------------------------------------------------------------------------------------
# > Python
#--------------------------------------------------------------------------------------------------

CONDA_PATH="$HOME/miniconda3/"
if [ -d  $CONDA_PATH ]; then
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('$CONDA_PATH/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "$CONDA_PATH/etc/profile.d/conda.sh" ]; then
            . "$CONDA_PATH/etc/profile.d/conda.sh"
        else
            export PATH="$CONDA_PATH/bin:$PATH"
        fi
    fi
    unset __conda_setup
fi
# <<< conda initialize <<<
