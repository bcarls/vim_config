#!/bin/bash

# Initialize the needed submodules
git submodule init
git submodule update

# Link everything up
ln -s ~/vim_config ~/.vim
ln -s ~/vim_config/.vimrc ~/.vimrc
