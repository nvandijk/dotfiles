#!/bin/bash

echo "symlink .dotfiles dir"
rm -f ~/.dotfiles
ln -s $(pwd)/ ~/.dotfiles

echo "symlink .bashrc"
rm ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc

echo "symlink .gitconfig"
rm -f ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
rm -f ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore
