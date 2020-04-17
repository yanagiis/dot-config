Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'sodapopcan/vim-twiggy'
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.vim'

let g:gitgutter_enabled = 1

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif
