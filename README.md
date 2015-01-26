vim_config
==========

## To install:

    rm ~/.vimrc 
    rm -rf ~/.vim
    git clone https://github.com/bcarls/vim_config
    cd vim_config
    chmod +x setup.sh
    ./setup.sh

## To install a new plugin, for example nerdcommenter:

    git submodule add https://github.com/scrooloose/nerdcommenter.git
    git submodule init
    git submodule update
    
## To periodically update the plugins:
    cd ~/vim_config/bundle
    git submodule foreach git pull
    
## To remove a plugin:

    git submodule deinit bundle/nerdcommenter
    git rm bundle/nerdcommenter
    
## If Command-T is updated, you will have to recompile:

    cd ~/.vim/bundle/Command-T/ruby/command-t
    ruby extconf.rb
    make

## For future reference, this is what was done to setup everything

To add plugins:

    git submodule add https://github.com/wincent/Command-T bundle/Command-T
    git submodule add https://github.com/scrooloose/nerdcommenter.git
    git submodule add https://github.com/bling/vim-airline bundle/vim-airline
    git submodule add https://github.com/scrooloose/syntastic.git bundle/syntastic
    git submodule add git://github.com/tpope/vim-sleuth.git bundle/vim-sleuth
    git submodule add git://github.com/tpope/vim-sensible.git bundle/vim-sensible
    git submodule add git://github.com/jeffkreeftmeijer/vim-numbertoggle.git bundle/vim-numbertoggle
    git submodule init
    git submodule update

To compile Command-T:

    cd ~/.vim/bundle/Command-T/ruby/command-t
    ruby extconf.rb
    make
    
To link everything:

    ln -s ~/vim_config ~/.vim
    ln -s ~/vim_config/.vimrc ~/.vimrc
