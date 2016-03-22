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

export PATH="$PATH:/Users/steve/.rvm/gems/ruby-2.2.3/bin:/Users/steve/.rvm/gems/ruby-2.2.3@global/bin:/Users/steve/.rvm/rubies/ruby-2.2.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/steve/.rvm/bin:/Users/steve/.rvm/bin:/Users/steve/.rvm/bin:/Users/steve/.rvm/bin:/Users/steve/.rvm/bin:/Users/steve/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'

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

