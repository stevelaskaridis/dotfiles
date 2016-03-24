#---------------------------------------------------------------------------------------------------
# > oh-my-zsh specific configurations
##--------------------------------------------------------------------------------------------------

# Path to your oh-my-zsh installation.
if [ `uname` = 'Darwin' ];then
  export ZSH=/Users/steve/.oh-my-zsh
elif [`uname` = 'Linux' ];then
  export ZSH=/home/steve/.oh-my-zsh
fi

# Theme
ZSH_THEME="pygmalion"

# Custom folder
ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins
if [ `uname` = 'Linux' ];then
  plugins=(git git-extras bundler ruby bundler rake capistrano chucknorris) 
elif [ `uname` = 'Darwin' ];then
  plugins=(git git-extras osx ruby bundler rake capistrano)
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

