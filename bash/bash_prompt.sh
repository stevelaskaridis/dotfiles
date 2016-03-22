#! /bin/bash

  # regular colors
  K="\[\033[0;30m\]"    # black
  R="\[\033[0;31m\]"    # red
  G="\[\033[0;32m\]"    # green
  Y="\[\033[0;33m\]"    # yellow
  B="\[\033[0;34m\]"    # blue
  M="\[\033[0;35m\]"    # magenta
  C="\[\033[0;36m\]"    # cyan
  W="\[\033[0;37m\]"    # white

  # emphasized (bolded) colors
  BK="\[\033[1;30m\]"
  BR="\[\033[1;31m\]"
  BG="\[\033[1;32m\]"
  BY="\[\033[1;33m\]"
  BB="\[\033[1;34m\]"
  BM="\[\033[1;35m\]"
  BC="\[\033[1;36m\]"
  BW="\[\033[1;37m\]"

  # reset
  RESET="\[\033[0m\]"

function ssh_prompt {
	if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
        echo "`whoami`@`hostname -s` "
  	fi
}

function git_prompt {
    # Git branch in prompt.
    function parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    }
    echo $(parse_git_branch)
}

function rvm_prompt {
    if hash rvm-prompt 2>&- ; then
        echo "`rvm-prompt i v g s`"
    fi
}

# export PS1="\h•$BY\$(ssh_prompt)$RESET\W: $R\$(rvm_prompt) $G\$(git_prompt)$RESET$ "
export PS1="$BB\h$RESET•:$BY\$(ssh_prompt)$RESET\W $G\$(git_prompt)$RESET$ "
