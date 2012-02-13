syntax enable
"set background=dark

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

set nocompatible        " Use Vim defaults (much better!)
set bs=2                " allow backspacing over everything in insert mode
set ai                  " always set autoindenting on
"set backup             " keep a backup file
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                        " than 50 lines of registers
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time

set expandtab		" expand tabs to spaces
set tabstop=2
set shiftwidth=2	" shift width to 2 spaces
"set smarttab		" smart tabs
set softtabstop=2	" causes backspace to delete 2 spaces

set nowrap          " turn that word-wrap bullshit off
set number          " gimme my line numbers 
set tw=0            " stop auto line breaking?

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ [\%{strftime(\"\%c\",getftime(expand(\"\%\%\")))}]%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b
set laststatus=2

filetype indent on

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  "autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

if has("cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

if &term=="xterm"
     set t_Co=256
     set t_Sb=^[[4%dm
     set t_Sf=^[[3%dm
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  "colorscheme mac_classic
  "colorscheme vividchalk 
  "colorscheme hemisu
  colorscheme pigraph 

  "Invisible character colors
  highlight NonText guifg=#4a4a59
  highlight SpecialKey guifg=#4a4a59

  set hlsearch
endif

call pathogen#infect()
