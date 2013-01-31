syntax enable

filetype plugin on
filetype indent on

set background=dark

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

set encoding=utf-8

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

set undofile
set undodir=~/.vim/.undodir
set undolevels=1000
set undoreload=10000

"set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ [\%{strftime(\"\%c\",getftime(expand(\"\%\%\")))}]%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b
set laststatus=2

let g:netrw_liststyle=3
let g:netrw_list_hide= '.*\.DS_Store$'

set guifont=Droid\ Sans\ Mono\ for\ Powerline:h14
let g:Powerline_symbols = 'fancy'

let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone


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
  
  " autocmd BufLeave,FocusLost * silent! wall
  autocmd BufRead,BufNewFile *.ejs setfiletype html
  autocmd BufNewFile,BufRead *.json set ft=javascript
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
  colorscheme hemisu
  "colorscheme pigraph 
  "colorscheme solarized

  "Invisible character colors
  highlight NonText guifg=#4a4a59
  highlight SpecialKey guifg=#4a4a59

  set hlsearch
endif

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '--include-vars',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

nmap <leader>l :set list!<CR>
nmap <leader>B :!test_movie_in_flash<CR>

nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>
nnoremap <silent> <Leader>n :NumbersToggle<CR>
nnoremap <silent> <Leader>y :TagbarToggle<CR>
nnoremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <silent> <C-b> :CtrlPBuffer<CR>

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

if has("gui_running")
    " C-Space seems to work under gVim on both Linux and win32
    inoremap <C-Space> <C-n>
else " no gui
  if has("unix")
    inoremap <Nul> <C-n>
  else
  " I have no idea of the name of Ctrl-Space elsewhere
  endif
endif

execute "silent! source ~/.vimrc.local"

call pathogen#infect()
