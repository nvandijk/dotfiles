#!/bin/bash

echo "symlink .bash_profile"
[ ! -f ~/.bash_profile ] && ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

echo "symlink .screenrc"
[ ! -f ~/.screenrc ] && ln -s ~/.dotfiles/.screenrc ~/.screenrc

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/.gitignore ~/.gitignore

echo "symlink Sublime Text 2 preferences"
[ ! -f ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings ] && ln -s ~/.dotfiles/Sublime\ Text\ 2/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings

echo "symlink Sublime Text 2 keymap"
[ ! -f ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap ] && ln -s ~/.dotfiles/Sublime\ Text\ 2/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap

echo "symlink Sublime Text 2 command line shortcut"
[ ! -f /usr/local/bin/subl ] && ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

echo "setup os x settings"
./.osx
