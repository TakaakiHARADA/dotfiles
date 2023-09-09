#!/bin/bash
set -x
set -e
set -o pipefail
set -u

# vim
cd "${HOME}"
if [ -e .vimrc ]; then
    echo "[ERROR] .vimrc already exists."
    exit 1
else
    ln -s .vimrc "${HOME}/dotfiles/vim/vimrc"
fi

# neovim
mkdir -p "${HOME}/.config/nvim/"
cd "${HOME}/.config/nvim"
if [ -e init.lua ]; then
    echo "[ERROR] .config/nvim/init.lua already exists."
    exit 1
else
    ln -s init.lua "${HOME}/dotfiles/nvim/init.lua"
fi

# zsh
cd "${HOME}"
if [ -e .zprofile ]; then
    echo "[ERROR] .zprofile already exists."
    exit 1
else
    ln -s .zprofile "${HOME}/dotfiles/zsh/zprofile"
fi
if [ -e .zshrc ]; then
    echo "[ERROR] .zshrc already exists."
    exit 1
else
    ln -s .zshrc "${HOME}/dotfiles/zsh/zshrc"
fi