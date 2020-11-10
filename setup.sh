#!/bin/bash

# https://github.com/vlnraf
# Author: vlnraf

# Arch aur

install_aur()
    {
        cd /tmp/
        curl -LO https://aur.archlinux.org/cgit/aur.git/snapshot/yay.tar.gz
        tar xvzf yay.tar.gz
        cd yay
        makepkg -sci
    }

# Dotfiles with git bare
install_dots()
    {
        cd ~
        mkdir -p ~/.config
        chmod 700 ~/.config
        git clone -- bare https://github.com/vlnraf/dotfiles $HOME/.dotfiles
        git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
        git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config -- local status.showUntrackedFiles no
    }
