if has("gui_macvim")
  "colorscheme mac_classic
  colorscheme pigraph

  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>

  macmenu &Tools.Make key=<nop>
  map <D-b> :CommandTBuffer<CR>
endif
