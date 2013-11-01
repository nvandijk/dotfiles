# My dotfiles

## Clone project in home directory.

    $ git clone git://github.com/nvandijk/dotfiles.git ~/.dotfiles

## OS X

Install Xcode with command-line tools and Homebrew (http://brew.sh)

    $ ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

## Install oh-my-zsh

https://github.com/robbyrussell/oh-my-zsh

    $ git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

## Run bootstrapper for your system

    $ cd ~/.dotfiles
    $ ./bootstrap_osx.sh
    $ ./bootstrap_ubuntu.sh
    $ ./bootstrap_linux.sh
