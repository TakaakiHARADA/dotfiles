#!/bin/bash
set -x
set -e
set -o pipefail
set -u

# vim
if [ -e ~/.vimrc ]; then
    echo "[ERROR] .vimrc already exists."
    exit 1
else
    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
fi

# neovim
mkdir -p ~/.config/nvim/
if [ -e ~/.config/nvim/init.lua ]; then
    echo "[ERROR] .config/nvim/init.lua already exists."
    exit 1
else
    ln -s ~/dotfiles/nvim/ ~/.config/nvim/
fi

# zsh
if [ -e ~/.zprofile ]; then
    echo "[ERROR] .zprofile already exists."
    exit 1
else
    ln -s ~/dotfiles/zsh/zprofile ~/.zprofile 
fi
if [ -e .zshrc ]; then
    echo "[ERROR] .zshrc already exists."
    exit 1
else
    ln -s ~/dotfiles/zsh/zshrc ~/.zshrc 
fi