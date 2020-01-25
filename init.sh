#!/bin/bash

# Moves the dot files to the corresponding places. Can also be used to update 
# dot files (make sure to have the files in the repo as source of truth)

# bash
cp .bashrc ~/
cp heic_to_jpeg.sh ~/

# emacs
mkdir ~/.emacs.d/
cp init.el ~/.emacs.d/

# tmux
cp tmux.conf ~/.tmux.conf
