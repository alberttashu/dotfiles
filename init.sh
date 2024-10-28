#!/bin/bash

DIR=$(dirname $(realpath $0))

ln -s $DIR/nvim ~/.config/nvim
ln -s $DIR/code/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $DIR/code/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s $DIR/.ideavimrc ~/.ideavimrc