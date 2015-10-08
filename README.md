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

## To install a new plugin, for example nerdcommenter:

    cd vim_config/bundle/
    git submodule add https://github.com/scrooloose/nerdcommenter.git
    
## To periodically update the plugins:
    cd ~/vim_config/bundle
    git submodule foreach git pull origin master
    
If you get an error "You are not currently on a branch.", then do this:
    git submodule foreach git checkout master
    git submodule foreach pull origin master
    
## To remove a plugin:

    git submodule deinit bundle/nerdcommenter
    git rm bundle/nerdcommenter
    

