" key binding

" ncm2
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" Map leader to space
let mapleader=' '

" nnoremap <leader><space>f <Plug>(easymotion-bd-f)
" nnoremap <leader><space>w <Plug>(easymotion-bd-w)
" nnoremap <leader><space>b <Plug>(easymotion-bd-b)

inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

nnoremap <leader>> :vertical resize +5<CR>
nnoremap <leader>< :vertical resize -5<CR>

" (A)lign
nnoremap <leader>a :EasyAlign<CR>
vnoremap <leader>a :EasyAlign<CR>

" (B)uffer
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bc :bd<CR>

" (C)onfig
nnoremap <leader>cc :edit ~/.config/nvim/init.vim<CR>
nnoremap <leader>ck :edit ~/.config/nvim/keybinding.vim<CR>
nnoremap <leader>cr :source ~/.config/nvim/init.vim<CR>

" (F)ile
nnoremap <leader>fs :w<CR>
nnoremap <leader>fS :w !sudo tee %<CR>
nnoremap <leader>fg :Rgrep<CR>
" nnoremap <leader>ff :FZF<CR>
nnoremap <leader>ff :FuzzyOpen<CR>
nnoremap <leader>fo :Neoformat<CR>

" (H)ighlight
nnoremap <leader> :hl<CR>

" (S)hell and session
if g:vim_bootstrap_editor == 'nvim'
  nnoremap <silent> <leader>sh :terminal<CR>
else
  nnoremap <silent> <leader>sh :VimShellCreate<CR>
endif

nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" (G)it
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
noremap <Leader>gv :Gitv<CR>

" (L)anguage
nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <leader>lc :call LanguageClient#textDocument_references()<CR>
nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
nnoremap <leader>li :call LanguageClient_textDocument_hover()<CR>
nmap <C-t> zP

augroup go
  autocmd!
  " vim-go
  " au FileType go nnoremap <Leader>ld <Plug>(go-def-vertical)
  " au FileType go nnoremap <Leader>lb <Plug>(go-doc-browser)
  au FileType go nnoremap K <Plug>(go-doc-vertical)
  au FileType go nnoremap <leader>lr  <Plug>(go-run)
  au FileType go nnoremap <leader>lt  <Plug>(go-test)
  au FileType go nnoremap <Leader>lgt <Plug>(go-coverage-toggle)
  au FileType go nnoremap <silent> <Leader>ll <Plug>(go-metalinter)
  au FileType go nnoremap <C-g> :GoDecls<cr>
  au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
augroup END

augroup python
  au FileType python nnoremap <F12> <Plug>(pydocstring)
augroup END
  " jedi-vim
  " let g:jedi#goto_assignments_command = "<leader>lg"
  " let g:jedi#goto_definitions_command = "<leader>ld"
  " let g:jedi#documentation_command = "K"
  " let g:jedi#usages_command = "<leader>ln"
  " let g:jedi#rename_command = "<leader>lr"
  " let g:jedi#completions_command = "<C-Space>"

augroup rust
  autocmd!
  " au FileType rust nnoremap <leader>ld zp<Plug>(rust-def)
  " au FileType rust nnoremap <C-t> zP
  " au FileType rust nnoremap gs <Plug>(rust-def-split)
  " au FileType rust nnoremap gx <Plug>(rust-def-vertical)
  " au FileType rust nnoremap <leader>K <Plug>(rust-doc)
augroup END

augroup c
  autocmd!
  au FileType c,cpp nnoremap <leader>ld :DeniteCursorWord -buffer-name=gtags_def gtags_def<cr>
  au FileType c,cpp nnoremap <leader>lc :DeniteCursorWord -buffer-name=gtags_ref gtags_ref<cr>
  " au FileType c,cpp nnoremap <leader>ls :Denite -buffer-name=gtags_completion gtags_completion<cr>
  " au FileType c,cpp nnoremap <leader>lf :Denite gtags_def:
  " au FileType c,cpp nnoremap <F12> :call g:ClangUpdateQuickFix()<cr>
augroup END

" (P)lugin
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>

" (W)indow
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l

" (S)earch
nnoremap <leader>* :Ack<cword><CR>
nnoremap <leader>s :Ack


" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Function key
nnoremap <silent> <F1> <ESC>
nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TagbarToggle<CR>

augroup go
    au FileType go nnoremap <F5> :DlvDebug<CR>
    au FileType go nnoremap <F9> :DlvToggleBreakpoint<CR>
augroup END

nnoremap ; :

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
