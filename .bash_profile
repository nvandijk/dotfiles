# Load .bashrc if it exists
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Load .aliases
source ~/.dotfiles/.aliases

# Load .bash_prompt
source ~/.dotfiles/.bash_prompt

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
