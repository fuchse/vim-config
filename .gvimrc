if has("gui_macvim")
  set background=dark

  "colorscheme mac_classic
  "colorscheme vividchalk 
  "colorscheme hemisu
  colorscheme pigraph  
  "colorscheme solarized

  "Invisible character colors
  highlight NonText guifg=#4a4a59
  highlight SpecialKey guifg=#4a4a59

  set guifont=Droid\ Sans\ Mono\ for\ Powerline:h14
  set guioptions=egmrt

  "macmenu &File.New\ Tab key=<nop>
  "map <D-t> :CommandT<CR>
  "macmenu &Tools.Make key=<nop>
  "map <D-b> :CommandTBuffer<CR>
endif
