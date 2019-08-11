Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/echodoc.vim'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

" let g:LanguageClient_rootMarkers = {
"         \ 'go': ['.git', 'go.mod'],
"         \ }

" let g:LanguageClient_serverCommands = {
"     \ 'c': ['clangd'],
"     \ 'cpp': ['clangd'],
"     \ 'go': ['gopls'],
"     \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"     \ 'python': ['pyls'],
"     \ 'javascript': ['typescript-language-server', '--stdio'],
"     \ 'typescript': ['typescript-language-server', '--stdio'],
"     \ 'typescript.tsx': ['typescript-language-server', '--stdio'],
"     \ 'dart': ['dart_language_server'],
"     \ 'reason': ['/home/yanagiis/bin/reason-language-server.exe']
"     \ }

" augroup golang
"     let g:LanguageClient_diagnosticsEnable = 0
" augroup END

" imap <expr><TAB>
" 	 \ neosnippet#expandable_or_jumpable() ?
" 	 \    "\<Plug>(neosnippet_expand_or_jump)" :
"      \ 	  pumvisible() ? "\<C-n>" : "\<TAB>"

" set cmdheight=2
" let g:echodoc#enable_at_startup = 1
" let g:echodoc#type = 'signature'

" " Always draw the signcolumn.
" set signcolumn=yes
" let g:deoplete#enable_at_startup = 1

" autocmd FileType c,cpp setlocal omnifunc=LanguageClient#complete
" autocmd FileType go setlocal omnifunc=LanguageClient#complete
" autocmd FileType python setlocal omnifunc=LanguageClient#complete
" autocmd FileType rust setlocal omnifunc=LanguageClient#complete
" autocmd FileType typescript,javascript setlocal omnifunc=LanguageClient#complete
" autocmd FileType typescript.tsx setlocal omnifunc=LanguageClient#complete
" autocmd FileType dart setlocal omnifunc=LanguageClient#complete
" autocmd FileType reason setlocal omnifunc=LanguageClient#complete
