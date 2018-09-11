source ~/.zshrc.old
#---------------------------------------------------------------------------------------------------
# > oh-my-zsh specific configurations
##--------------------------------------------------------------------------------------------------

# Path to your oh-my-zsh installation.
OS_VERSION="$(uname)"
if [ "$OS_VERSION" = 'Darwin' ];then
  export ZSH=/Users/steve/.oh-my-zsh
elif [ "$OS_VERSION" = 'Linux' ];then
  export ZSH=/home/steve/.oh-my-zsh
fi

# Theme
ZSH_THEME="pygmalion"

# Custom folder
ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins
if [ "$OS_VERSION" = 'Linux' ];then
  plugins=(git git-extras ruby chucknorris) 
elif [ $OS_VERSION = 'Darwin' ];then
  plugins=(git git-extras osx ruby)
fi


#--------------------------------------------------------------------------------------------------
# > User configuration
##--------------------------------------------------------------------------------------------------

# Load oh-my-zsh things
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# UTF-8
export LANG=en_US.UTF-8


#--------------------------------------------------------------------------------------------------
## > Path
#--------------------------------------------------------------------------------------------------

# Load path if existent
source ~/dotfiles/path.sh


#--------------------------------------------------------------------------------------------------
## > Aliases
#--------------------------------------------------------------------------------------------------

source ~/dotfiles/alias.sh


#--------------------------------------------------------------------------------------------------
## > Ruby
#--------------------------------------------------------------------------------------------------

source ~/dotfiles/ruby.sh


#--------------------------------------------------------------------------------------------------
## > Python
#--------------------------------------------------------------------------------------------------

source ~/dotfiles/python.sh

#--------------------------------------------------------------------------------------------------
## > Other
#--------------------------------------------------------------------------------------------------

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
