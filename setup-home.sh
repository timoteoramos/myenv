#!/bin/bash
SCRIPT_ROOT=$(cd `dirname "$0"` && pwd)

# Vundle
mkdir -p ~/.vim/bundle
[ ! -e ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Symbolic links
rm ~/.vimrc
ln -s $SCRIPT_ROOT/vim/vimrc ~/.vimrc
rm ~/.bashrc
ln -s $SCRIPT_ROOT/bash/bashrc ~/.bashrc
rm ~/.Xresources
ln -s $SCRIPT_ROOT/xresources/Xresources ~/.Xresources
