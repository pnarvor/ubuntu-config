#! /bin/bash

set -e

# Getting this script directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp    $DIR/gitconfig $HOME/.gitconfig
cp    $DIR/tmux.conf $HOME/.tmux.conf
cp    $DIR/vimrc     $HOME/.vimrc
cp -r $DIR/vim       $HOME/.vim 

# Keyboard layout (must be sudo) find a better way
KEYBOARD_LAYOUT_PATH=/usr/share/X11/xkb/symbols
sudo cp $KEYBOARD_LAYOUT_PATH/us $KEYBOARD_LAYOUT_PATH/us_old
sudo cp $DIR/us $KEYBOARD_LAYOUT_PATH/us


