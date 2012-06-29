# my VIM/MVIM configuration

Keeping all of my VIM config stuff in one place. This is a mashup of all the various vim config statements I've accumulated over the years. It probably needs some serious cleanup.

## Installation

    $ cd ~
    $ git clone git://github.com/fuchse/vim-config.git .vim
    $ cd .vim
    $ git submodule init
    $ git submodule update
    $ cd ~
    $ ln -s ~/.vim/.vimrc .vimrc
    $ ln -s ~/.vim/.gvimrc .gvimrc

### And to install Command-T (requires vim running with +ruby support)

    $ cd ~/.vim/bundle/Command-T
    $ rake make

### Ack plugin requires ack, install it with homebrew (http://mxcl.github.com/homebrew/)

    $ brew install ack
    $ cd ~/.vim/bundle/ack.vim
    $ rake install
    
(see ~/.vim/bundle/ack.vim/README.md for more installation options)


## Plugins, Colors & Syntax Highlighting (currently, this could change)
  * Plugins
    * [Command-T] (https://github.com/wincent/Command-T)
    * [ack.vim] (https://github.com/mileszs/ack.vim)
    * [syntastic] (https://github.com/scrooloose/syntastic)
    * [bufexplorer] (https://github.com/corntrace/bufexplorer)
    * [tabular] (https://github.com/godlygeek/tabular)
    * [vim-fugitive] (https://github.com/tpope/vim-fugitive)
  * Colors/Themes
    * [vim-colors-solarized] (https://github.com/altercation/vim-colors-solarized)
    * [vim-css-color] (https://github.com/skammer/vim-css-color)
    * [Hemisu] (https://github.com/noahfrederick/Hemisu)
    * [vim-pigraph] (https://github.com/fmeyer/vim-pigraph)
  * Syntax Highlighting
    * [vim-css3-syntax] (https://github.com/hail2u/vim-css3-syntax)
    * [vim-less] (https://github.com/groenwege/vim-less)
