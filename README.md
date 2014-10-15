vim_config
==========

To start:
    git clone https://github.com/bcarls/vim_config

To add plugins:
    git submodule add https://github.com/wincent/Command-T bundle/Command-T
    git submodule init
    git submodule update
    git submodule add https://github.com/scrooloose/nerdcommenter.git
    git submodule init
    git submodule update
    git submodule add https://github.com/bling/vim-airline bundle/vim-airline
    git submodule init
    git submodule update
    git submodule add https://github.com/scrooloose/syntastic.git bundle/syntastic
    git submodule init
    git submodule update
    git submodule add git://github.com/tpope/vim-sleuth.git bundle/vim-sleuth
    git submodule init
    git submodule update
    git submodule add git://github.com/tpope/vim-sensible.git bundle/vim-sensible
    git submodule init
    git submodule update
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
