#--------------------------------------------------------------------------------------------------
# > Aliases
#--------------------------------------------------------------------------------------------------
alias rm='rm -i'
alias Apps='cd /Applications'
alias ll='ls -al'
alias sl='ls'
alias l="ls"
alias lh='ls -lt | head -n 10'

# Initialize docker
alias startdocker="bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'"

# Navigate to ansible directory
alias gotoansible='cd ~/Documents/Work/Grid/ansible/'

# Navigate to work directories
alias gotowork='cd ~/Documents/Work/'
alias gotocern='cd ~/Documents/Work/CERN/'
alias gotoprojects='cd ~/Documents/Work/Grid/projects'
alias gotogrid='cd ~/Documents/Work/Grid/'
alias gotogsoc='cd ~/Desktop/GSOC/'

# Navigate to university directories
alias gotouni='cd ~/Documents/University/'
alias gotothesis='cd ~/Documents/University/AUTH/CS/Thesis/'

# Navigate to bookshelf
alias gotobooks='cd ~/Downloads/Bookshelf/'

# Home level shortcut
function goto(){
  cd ~/$1
}
# Create and change to new directory
function mkcd(){
  mkdir $1
  cd $1
}

function priv() {
    if [ "$1" = "firefox" ] || [ "$1" = "chrome" ];then
        ~/dotfiles/scripts/anonymous_browsing/$1_priv.sh
    fi
}
