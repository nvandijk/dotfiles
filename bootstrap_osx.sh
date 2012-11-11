#!/bin/bash

echo "symlink .bash_prompt"
rm ~/.bash_prompt
ln -s $(pwd)/.bash_prompt ~/.bash_prompt

echo "symlink .gitconfig_osx"
rm ~/.gitconfig
ln -s $(pwd)/.gitconfig_osx ~/.gitconfig

echo "symlink .gitignore_linux"
rm ~/.gitignore
ln -s $(pwd)/.gitignore_osx ~/.gitignore

echo "symlink Sublime Text preferences and keymap"
rm ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
ln -s $(pwd)/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings
rm ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap
ln -s $(pwd)/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap
