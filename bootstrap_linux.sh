#!/bin/bash

echo "symlink .dotfiles dir"
rm -f ~/.dotfiles
ln -s $(pwd)/ ~/.dotfiles

echo "symlink .bash_profile"
rm -f ~/.bash_profile
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

echo "symlink .screenrc"
rm -f ~/.screenrc
ln -s ~/.dotfiles/.screenrc ~/.screenrc

echo "symlink .gitconfig"
rm -f ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
rm -f ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore
