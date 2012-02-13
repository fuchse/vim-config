if has("gui_macvim")
  "colorscheme mac_classic
  "colorscheme vividchalk 
  "colorscheme hemisu
  colorscheme pigraph 

  "Invisible character colors
  highlight NonText guifg=#4a4a59
  highlight SpecialKey guifg=#4a4a59


  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>

  macmenu &Tools.Make key=<nop>
  map <D-b> :CommandTBuffer<CR>
endif
