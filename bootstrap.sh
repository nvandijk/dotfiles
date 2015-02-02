#!/bin/bash

# Download and install Command Line Tools
if [[ ! -x /usr/bin/gcc ]]; then
    echo "Installing xcode (Command Line Tools) ..."
    xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Installing Homebrew ..."
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

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
