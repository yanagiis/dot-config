if has('vim_starting')
  set nocompatible               " Be iMproved
endif

set shell=/bin/zsh

let g:VIMPATH=expand("~/.config/nvim/")
let g:PLUGGED_PATH=g:VIMPATH . "plugged/"

runtime! settings/vim-plug.vim

" { Plugins
call plug#begin(g:PLUGGED_PATH)

runtime! settings/vim-commentary.vim
runtime! settings/lightline.vim
runtime! settings/easymotion.vim
runtime! settings/kangaroo.vim
runtime! settings/color.vim
runtime! settings/fuzzy.vim
runtime! settings/ack.vim
runtime! settings/debug.vim
runtime! settings/vim-signature.vim
runtime! settings/vim-session.vim
runtime! settings/align.vim
runtime! settings/language_client.vim
runtime! settings/vim-surround.vim
runtime! settings/syntax.vim
runtime! settings/ultisnips.vim
runtime! settings/filemanager.vim
runtime! settings/git.vim
runtime! settings/goyo.vim

" {{ language
runtime! settings/go.vim
runtime! settings/html.vim
runtime! settings/python.vim
runtime! settings/meson.vim
runtime! settings/css.vim
runtime! settings/typescript.vim
runtime! settings/proto.vim
runtime! settings/doxygen.vim
runtime! settings/markdown.vim
runtime! settings/dart.vim
runtime! settings/svelte.vim
" }}

call plug#end()
" }

runtime! settings/language_client.postinit.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/keybinding.vim

set background=dark
colorscheme PaperColor
