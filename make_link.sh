#! /bin/sh

# link
cd ~
if [ -e ~/.vimrc ]; then
    echo ".vimrc already exists!!"
    exit 1
else
    ln -s .vimrc ~/dotfiles/vimrc
fi
