#!/bin/bash

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/common/gitconfig.symlink ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/common/gitignore.symlink ~/.gitignore
