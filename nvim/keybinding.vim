" key binding

" Map leader to space
let mapleader=' '

nnoremap <leader>> :vertical resize +5<CR>
nnoremap <leader>< :vertical resize -5<CR>

" (A)lign
nnoremap <leader>a :EasyAlign<CR>
vnoremap <leader>a :EasyAlign<CR>

" (B)uffer
nnoremap <leader>bb :PickerBuffer<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bc :bd<CR>

" (C)onfig
nnoremap <leader>cc :edit ~/.config/nvim/init.vim<CR>
nnoremap <leader>ck :edit ~/.config/nvim/keybinding.vim<CR>
nnoremap <leader>cr :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>coc :CocConfig<CR>

" (F)ile
nnoremap <leader>fs :w<CR>
nnoremap <leader>fS :w !sudo tee %<CR>
" nnoremap <leader>fg :Grepper<CR>
nnoremap <leader>fg :Grepper -tool ag<CR>
nnoremap <leader>ff :PickerEdit<CR>

" (H)ighlight
nnoremap <leader> :hl<CR>

" (S)hell and session
nnoremap <silent> <leader>sh :terminal<CR>

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
" nmap <leader>ld zp:call LanguageClient#textDocument_definition()<CR>
" nmap <leader>lr :call LanguageClient#textDocument_rename()<CR>
" nmap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
" nmap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
" nmap <leader>lc zp:call LanguageClient#textDocument_references()<CR>
" nmap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
" nmap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
" nmap <leader>lm :call LanguageClient_contextMenu()<CR>
" nmap <leader>li :call LanguageClient_textDocument_hover()<CR>
" nmap <C-t> zP

" nmap <silent> <leader>ld zp<Plug>(coc-definition)
" nmap <silent> <leader>lt zp<Plug>(coc-type-definition)
" nmap <silent> <leader>li zp<Plug>(coc-implementation)
" nmap <silent> <leader>lc zp<Plug>(coc-references)
" nmap <silent> <leader>lr zp<Plug>(coc-rename)
" nmap <silent> <leader>ll :CocRestart<CR>
" nmap <silent> <leader>lf :call CocAction('format')<CR>
" nmap <C-t> zP

nmap <silent> <leader>ld zp:lua vim.lsp.buf.definition()<CR>
nmap <silent> <leader>le :lua vim.lsp.util.show_line_diagnostics()<CR>
nmap <silent> <leader>li zp:lua vim.lsp.buf.implementation()<CR>
nmap <silent> <leader>lc zp:lua vim.lsp.buf.reference()<CR>
nmap <silent> <leader>lr :lua vim.lsp.buf.rename()<CR>
nmap <silent> <leader>ll :lua vim.lsp.buf.server_ready()<CR>
nmap <silent> <leader>lf :lua vim.lsp.buf.formatting()<CR>
nmap <silent> K :lua vim.lsp.buf.hover()<CR>
nmap <C-t> zP

augroup svelte
  au FileType svelte nnoremap <Leader>lf :PrettierAsync<CR>
augroup END

augroup go
  autocmd!
  " vim-go
  let g:go_def_mapping_enabled = 0
  " au FileType go nnoremap <Leader>ld <Plug>(go-def-vertical)
  au FileType go nnoremap <Leader>lb <Plug>(go-doc-browser)
  " au FileType go nnoremap K <Plug>(go-doc-vertical)
  " au FileType go nnoremap <leader>lr  <Plug>(go-run)
  au FileType go nnoremap <leader>lt  <Plug>(go-test)
  au FileType go nnoremap <Leader>lgt <Plug>(go-coverage-toggle)
  au FileType go nnoremap <silent> <Leader>ll <Plug>(go-metalinter)
  au FileType go nnoremap <C-g> :GoDecls<cr>
  au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
augroup END

" (P)lugin
nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>

" (W)indow
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l

" (W)orkspace
nnoremap <leader>ww :ToggleWorkspace<CR>


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
