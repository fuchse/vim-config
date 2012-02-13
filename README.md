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
    * [Command-T](/wincent/Command-T)
    * [ack.vim](/mileszs/ack.vim)
    * [syntastic](/scrooloose/syntastic)
    * [bufexplorer](/corntrace/bufexplorer)
    * [tabular](/godlygeek/tabular)
    * [vim-fugitive](/tpope/vim-fugitive)
  * Colors/Themes
    * [vim-colors-solarized](/altercation/vim-colors-solarized)
    * [vim-css-color](/skammer/vim-css-color)
    * [Hemisu](/noahfrederick/Hemisu)
    * [vim-pigraph](/fmeyer/vim-pigraph)
  * Syntax Highlighting
    * [vim-css3-syntax](/hail2u/vim-css3-syntax)
    * [vim-less](/groenwege/vim-less)
