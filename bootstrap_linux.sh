#!/bin/bash

echo "symlink .bash_profile"
[ ! -f ~/.bash_profile ] && ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

echo "symlink .screenrc"
[ ! -f ~/.screenrc ] && ln -s ~/.dotfiles/.screenrc ~/.screenrc

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/.gitignore ~/.gitignore
