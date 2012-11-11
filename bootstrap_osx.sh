#!/bin/bash

echo "symlink .dotfiles dir"
rm -f ~/.dotfiles
ln -s $(pwd)/ ~/.dotfiles

echo "symlink .bash_profile"
rm -f ~/.bash_profile
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

echo "symlink .gitconfig"
rm -f ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
rm -f ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore

echo "symlink Sublime Text preferences and keymap"
rm -f ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
ln -s ~/.dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
rm -f ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap
ln -s ~/.dotfiles/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap

echo "setup osx settings"
./.osx
