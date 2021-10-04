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

install_xmonad(){
    sudo pacman -S xmonad xmonad-contrib
}

# Dotfiles with git bare
install_dots()
    {
        cd ~
        mkdir -p ~/.config
        chmod 700 ~/.config
        git clone --bare https://github.com/vlnraf/dotfiles $HOME/.dotfiles
        git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout --force
        git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
    }

# Key apps to install
install_key_app(){
    sudo pacman -S ranger xmobar nitrogen neovim tmux alacritty keychain ruby pyright clang ttf-ubuntu-font-family nerd-fonts-noto-sans-mono ttf-font-awesome network-manager-applet network-manager-applet blueman volumeicon trayer
    
    yay -S nerd-fonts-mononoki ttf-font-awesome ttf-font-awesome-4
}
echo "Installing Window Manager Xmonad"
install_xmonad

echo "Installing aur package"
install_aur

echo "Installing all the apps to run the system properly"
install_key_app

echo "Installing dotfiles"
install_dots
