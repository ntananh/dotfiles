#!/bin/sh 
DOTFILE_DIR=$(pwd)

ln -sfn $DOTFILE_DIR/{alacritty,nvim} $HOME/.config
ln -sfn $DOTFILE_DIR/tmux/.tmux.conf $HOME/.tmux.conf
# ln -sfn $DOTFILE_DIR/.zshrc $HOME/.zshrc
