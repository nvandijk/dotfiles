#!/bin/bash

echo "symlink .gitconfig_linux"
rm ~/.gitconfig
ln -s $(pwd)/.gitconfig_linux ~/.gitconfig
