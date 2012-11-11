#!/bin/bash

echo "symlink .bash_prompt"
rm ~/.bash_prompt
ln -s $(pwd)/.bash_prompt ~/.bash_prompt

echo "symlink .gitconfig_linux"
rm ~/.gitconfig
ln -s $(pwd)/.gitconfig_linux ~/.gitconfig

echo "symlink .gitignore"
rm ~/.gitignore
ln -s $(pwd)/.gitignore ~/.gitignore
