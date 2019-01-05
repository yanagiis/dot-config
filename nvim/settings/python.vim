Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
Plug 'heavenshell/vim-pydocstring'

augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END
