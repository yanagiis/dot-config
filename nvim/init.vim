if has('vim_starting')
  set nocompatible               " Be iMproved
endif

set shell=/bin/zsh

let g:VIMPATH=expand("~/.config/nvim/")
let g:PLUGGED_PATH=g:VIMPATH . "plugged/"

runtime! settings/vim-plug.vim

" { Plugins
call plug#begin(g:PLUGGED_PATH)

runtime! settings/nerdtree.vim
runtime! settings/tagbar.vim
runtime! settings/vim-commentary.vim
runtime! settings/vim-airline.vim
runtime! settings/ale.vim
runtime! settings/gtags.vim
runtime! settings/denite.vim
runtime! settings/neoformat.vim
runtime! settings/easymotion.vim
runtime! settings/kangaroo.vim
runtime! settings/ncm2.vim
" runtime! settings/ultisnips.vim
runtime! settings/color.vim
runtime! settings/fuzzy.vim
runtime! settings/ack.vim
runtime! settings/vim-grepper.vim
runtime! settings/debug.vim
runtime! settings/language_client.vim
runtime! settings/vim-signature.vim
runtime! settings/vim-session.vim
runtime! settings/fish.vim

runtime! settings/git.vim

" {{ language
runtime! settings/go.vim
runtime! settings/html.vim
runtime! settings/python.vim
runtime! settings/meson.vim
runtime! settings/css.vim
runtime! settings/typescript.vim
runtime! settings/proto.vim
" }}

call plug#end()
" }

source ~/.config/nvim/basic.vim
source ~/.config/nvim/keybinding.vim

set termguicolors
colorscheme molokai

call DenitePost()
