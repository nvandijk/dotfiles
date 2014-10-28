#!/bin/bash

echo "setup os x settings"
./osx_defaults

echo "setup brew formula"
./brew

echo "set default shell to zsh"
chsh -s /usr/local/bin/zsh

echo "symlink .zshrc"
[ ! -f ~/.zshrc ] && ln -s ~/.dotfiles/zshrc.symlink ~/.zshrc

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/gitconfig.symlink ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/gitignore.symlink ~/.gitignore

echo "symlink .hgrc"
[ ! -f ~/.hgrc ] && ln -s ~/.dotfiles/hgrc.symlink ~/.hgrc

echo "symlink .hgignore_global"
[ ! -f ~/.hgignore_global ] && ln -s ~/.dotfiles/hgignore.symlink ~/.hgignore_global

echo "symlink opendiff-w"
[ ! -f /usr/local/bin/opendiff-w ] && ln -s ~/.dotfiles/opendiff-w /usr/local/bin/opendiff-w

echo "symlink Sublime Text User dir"
rm -r ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s ~/.dotfiles/Sublime\ Text/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

echo "symlink Sublime Text command line shortcut"
[ ! -f /usr/local/bin/subl ] && ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

echo "Installing python packages in global site-packages"
pip install -r ./requirements.txt
