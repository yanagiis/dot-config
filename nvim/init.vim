if has('vim_starting')
  set nocompatible               " Be iMproved
endif

let g:VIMPATH=expand("~/.config/nvim/")
let g:PLUGGED_PATH=g:VIMPATH . "plugged/"

runtime! settings/vim-plug.vim

" { Plugins
call plug#begin(g:PLUGGED_PATH)

runtime! settings/nerdtree.vim
runtime! settings/tarbar.vim
runtime! settings/vim-commentary.vim
runtime! settings/vim-airline.vim
runtime! settings/ale.vim
runtime! settings/gtags.vim
runtime! settings/denite.vim
runtime! settings/neoformat.vim
runtime! settings/easymotion.vim
runtime! settings/kangaroo.vim
runtime! settings/ultisnips.vim
runtime! settings/ncm2.vim
runtime! settings/color.vim
runtime! settings/fuzzy.vim

runtime! settings/language_client.vim

" {{ git
runtime! settings/vim-fugitive.vim
runtime! settings/committia.vim
runtime! settings/gitv.vim
" }}

runtime! settings/go.vim
runtime! settings/html.vim
runtime! settings/python.vim
runtime! settings/meson.vim

call plug#end()
" }

source ~/.config/nvim/basic.vim
source ~/.config/nvim/keybinding.vim
colorscheme molokai
