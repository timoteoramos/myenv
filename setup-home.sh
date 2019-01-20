#!/bin/bash
SCRIPT_ROOT=$(cd `dirname "$0"` && pwd)

# Setup directory structure
mkdir -p ~/.vim/bundle
mkdir -p ~/.config/{qtile,rofi}

# Vundle
[ ! -e ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Symbolic links
rm -Rf ~/.config/qtile/*
ln -s $SCRIPT_ROOT/qtile/{autostart,config,groups,keys,layouts,misc,screens}.py ~/.config/qtile/
ln -s $SCRIPT_ROOT/qtile/autostart.sh ~/.config/qtile/

rm -Rf ~/.config/rofi/*
ln -s $SCRIPT_ROOT/rofi/config ~/.config/rofi/

rm -Rf ~/.bashrc
ln -s $SCRIPT_ROOT/bash/bashrc ~/.bashrc

rm -Rf ~/.tmux.conf
ln -s $SCRIPT_ROOT/tmux/tmux.conf ~/.tmux.conf

rm -Rf ~/.vimrc
ln -s $SCRIPT_ROOT/vim/vimrc ~/.vimrc

rm -Rf ~/.xinitrc
ln -s $SCRIPT_ROOT/misc/xinitrc ~/.xinitrc

rm -Rf ~/.Xresources
ln -s $SCRIPT_ROOT/misc/Xresources ~/.Xresources
