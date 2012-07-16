#!/bin/bash

echo "symlink .gitconfig_linux"
rm ~/.gitconfig
ln -s $(pwd)/.gitconfig_linux ~/.gitconfig

echo "symlink .gitignore_linux"
rm ~/.gitignore
ln -s $(pwd)/.gitignore_linux ~/.gitignore
