#!/bin/sh 
DOTFILE_DIR=$(pwd)

ln -sfn $DOTFILE_DIR/alacritty $HOME/.config/alacritty
ln -sfn $DOTFILE_DIR/nvim $HOME/.config/nvim
ln -sfn $DOTFILE_DIR/tmux/.tmux.conf $HOME/.tmux.conf
ln -sfn $DOTFILE_DIR/shell/.zshrc $HOME/.zshrc
ln -sfn $DOTFILE_DIR/yabai $HOME/.config/yabai 
ln -sfn $DOTFILE_DIR/skhd $HOME/.config/skhd 
ln -sfn $DOTFILE_DIR/sketchybar $HOME/.config/sketchybar 
ln -sfn /usr/bin/batcat /usr/local/bin/bat
ln -sfn /usr/bin/fdfind /usr/local/bin/fd
