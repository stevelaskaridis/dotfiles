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
alias gotointerviews="cd ~/Documents/Interviews/"
alias gotoprojects='cd ~/Documents/Work/Grid/projects'
alias gotogrid='cd ~/Documents/Work/Grid/'
alias gotogsoc='cd ~/Desktop/GSOC/'

# Navigate to university directories
alias gotouni='cd ~/Documents/University/'
alias gotocam="cd ~/Documents/Cambridge/MPhil\ in\ Advanced\ Computer\ Science"
alias gotothesis="cd ~/Documents/Cambridge/MPhil\ in\ Advanced\ Computer\ Science/Thesis/MobileSensing/"

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


OS_VERSION="$(uname)"
if [ "$OS_VERSION" = 'Darwin' ];then
  alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
  alias firefox="/Applications/Firefox.app/Contents/MacOS/firefox"
elif [ "$OS_VERSION" = 'Linux' ];then
  alias chrome="google-chrome"
fi

# Create private session from CLI
function priv() {
    if [ "$1" = "firefox" ] || [ "$1" = "chrome" ];then
        source ~/dotfiles/scripts/anonymous_browsing/$1_priv.sh
    fi
}

# Chrome headless pdf from website
function wwwpdf {
  chrome --headless --disable-gpu --print-to-pdf $1
}
