vim_config
==========

## To install:

    rm ~/.vimrc 
    rm -rf ~/.vim
    git clone https://github.com/bcarls/vim_config
    cd vim_config
    chmod +x setup.sh
    ./setup.sh

## To link everything:

The setup.sh script does this, but if you need to again:

    ln -s ~/vim_config ~/.vim
    ln -s ~/vim_config/.vimrc ~/.vimrc

## Plugins

They are handled by vim-plug

