export ZSH=/Users/blazej.hadzik/.oh-my-zsh

ZSH_THEME="sorin"
export DEFAULT_USER=`whoami`

plugins=(git rails ruby osx sublime z)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

alias f="fab -f ~/projects/puppet/fabfile.py"
alias qq='cd ~/projects/'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
