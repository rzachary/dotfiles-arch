#!/bin/sh

# Install Shells
sudo pacman -S zsh zsh-completions

# Install main terminal 
sudo pacman -S xterm termite

# Install additional Teminals
sudo pacman -S alacritty
sudo pacman -S rxvt-unicode

# Install Exa
sudo pacman -S exa

# Install Multiplexer
sudo pacman -S tmux

# Install Powerline
sudo pacman -S powerline powerline-fonts powerline-vim
