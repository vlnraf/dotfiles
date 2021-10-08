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

install_oh_my_zsh(){
    cd ~
    sudo pacman -S zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

choose_video_driver(){
    # choose video driver
    echo "1) xf86-video-intel 	2) xf86-video-amdgpu 3) nvidia 4) Skip"
    read -r -p "Choose you video card driver(default 1)(will not re-install): " vid

    case $vid in 
    [1])
        DRI='xf86-video-intel'
        ;;

    [2])
        DRI='xf86-video-amdgpu'
        ;;

    [3])
        DRI='nvidia nvidia-settings nvidia-utils'
        ;;

    [4])
        DRI=""
        ;;
    [*])
        DRI='xf86-video-intel'
        ;;
    esac

    # install xorg if not installed
    sudo pacman -S --noconfirm --needed rofi feh xorg xorg-xinit xorg-xinput $DRI

}

set -e

echo "Installer for Raffaele Dotfiles" && sleep 2

echo "Doing a system update, cause something can go wrong if the system is not updated to the latest version"
sudo pacman --noconfirm -Syu

# install base-devel if not installed
sudo pacman -S --noconfirm --needed base-devel wget git

choose_video_driver

echo "Installing Window Manager Xmonad"
install_xmonad

echo "Installing aur package"
install_aur

echo "Installing all the apps to run the system properly"
install_key_app

echo "Installing dotfiles"
install_dots
