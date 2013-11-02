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
