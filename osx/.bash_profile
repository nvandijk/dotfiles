# load dotfiles root .bash_profile
source ~/.dotfiles/.bash_profile

# load osx .aliases
source ~/.dotfiles/osx/.aliases

# brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
