Plug 'tpope/vim-fugitive'

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif
