#!/bin/bash

# Download and install Command Line Tools
echo "Installing xcode (Command Line Tools) ..."
xcode-select --install

# Download and install Homebrew
echo "Installing Homebrew ..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew cask
echo "Installing Homebrew Cask ..."
brew install caskroom/cask/brew-cask

# Install Homebrew cask tap
echo "Installing Homebrew Cask tap..."
brew tap caskroom/versions

# Modify the PATH
export PATH=/usr/local/bin:$PATH

# Download and install python
if [[ ! -x /usr/local/bin/python ]]; then
    echo "Installing Python (with homebrew) ..."
    brew install python
fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    echo "Installing Ansible (with pip) ..."
    pip install ansible
fi

# Provision the box
echo "Provisioning this box with Ansible ..."
ansible-playbook -i provision/inventory --ask-sudo-pass provision/setup.yaml
