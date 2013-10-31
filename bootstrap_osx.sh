#!/bin/bash

echo "setup os x settings"
./osx/osx

echo "setup brew formula"
./osx/brew

echo "set default shell to zsh"
chsh -s /usr/local/bin/zsh

echo "symlink .zshrc"
[ ! -f ~/.zshrc ] && ln -s ~/.dotfiles/osx/zshrc.symlink ~/.zshrc

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/common/gitconfig.symlink ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/common/gitignore.symlink ~/.gitignore

echo "symlink Sublime Text User dir"
rm -r ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
ln -s ~/.dotfiles/osx/Sublime\ Text/ ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User

echo "symlink Sublime Text command line shortcut"
[ ! -f /usr/local/bin/subl ] && ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
