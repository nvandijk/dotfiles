# load .bashrc if it exists
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# load .aliases
source ~/.dotfiles/.aliases

# load .bash_prompt
source ~/.dotfiles/.bash_prompt

# prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
