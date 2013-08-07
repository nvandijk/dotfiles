#!/bin/bash

echo "symlink linux .bash_profile"
[ ! -f ~/.bash_profile ] && ln -s ~/.dotfiles/linux/.bash_profile ~/.bash_profile

echo "symlink .screenrc"
[ ! -f ~/.screenrc ] && ln -s ~/.dotfiles/linux/.screenrc ~/.screenrc

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/gitconfig.symlink ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/gitignore.symlink ~/.gitignore
