#!/bin/bash

echo "symlink .bash_prompt"
rm ~/.bash_prompt
ln -s $(pwd)/.bash_prompt ~/.bash_prompt

echo "symlink .gitconfig"
rm ~/.gitconfig
ln -s $(pwd)/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
rm ~/.gitignore
ln -s $(pwd)/.gitignore ~/.gitignore
