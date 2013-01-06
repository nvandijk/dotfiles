# load .bashrc if it exists
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# load .bash_prompt
source ~/.dotfiles/.bash_prompt

# load dotfiles root .aliases
source ~/.dotfiles/.aliases

# prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
