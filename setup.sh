#!/bin/sh 
DOTFILE_DIR=$(pwd)

ln -sfn $DOTFILE_DIR/alacritty $HOME/.config/alacritty
ln -sfn $DOTFILE_DIR/nvim $HOME/.config/nvim
ln -sfn $DOTFILE_DIR/tmux/.tmux.conf $HOME/.tmux.conf
ln -sfn $DOTFILE_DIR/shell/.zshrc $HOME/.zshrc
ln -sfn /usr/bin/batcat /usr/local/bin/bat
ln -sfn /usr/bin/fdfind /usr/local/bin/fd
