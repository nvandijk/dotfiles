#!/bin/bash

echo "set default shell to zsh"
chsh -s /usr/bin/zsh

echo "symlink .zshrc"
[ ! -f ~/.zshrc ] && ln -s ~/.dotfiles/ubuntu/zshrc.symlink ~/.zshrc

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/common/gitconfig.symlink ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/common/gitignore.symlink ~/.gitignore

echo "symlink .hgrc"
[ ! -f ~/.hgrc ] && ln -s ~/.dotfiles/common/hgrc.symlink ~/.hgrc

echo "symlink .hgignore"
[ ! -f ~/.hgignore ] && ln -s ~/.dotfiles/common/hgignore.symlink ~/.hgignore

echo "symlink Sublime Text User dir"
rm -r ~/.config/sublime-text-2/Packages/User
ln -s ~/.dotfiles/common/Sublime\ Text/ ~/.config/sublime-text-2/Packages/User

echo "symlink Sublime Text command line shortcut"
[ ! -f /usr/local/bin/subl ] && sudo ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/local/bin/subl
