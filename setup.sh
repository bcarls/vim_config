#!/bin/bash

# Initialize the needed submodules
git submodule init
git submodule update

# Compile Command-T
cd ~/vim_config/bundle/Command-T/ruby/command-t
ruby extconf.rb
make

# Link everything up
ln -s ~/vim_config ~/.vim
ln -s ~/vim_config/.vimrc ~/.vimrc
