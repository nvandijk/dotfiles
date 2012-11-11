# Load .bashrc if it exists
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Load .aliases
source ~/.dotfiles/.aliases

# Load .bash_prompt
source ~/.dotfiles/.bash_prompt
