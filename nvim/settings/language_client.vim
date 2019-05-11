Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Plug 'ncm2/ncm2-ultisnips'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'ncm2/ncm2-neosnippet'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

let g:LanguageClient_rootMarkers = {
        \ 'go': ['.git', 'go.mod'],
        \ }

let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ 'go': ['gopls'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'python': ['pyls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'dart': ['dart_language_server'],
    \ 'reason': ['/home/yanagiis/bin/reason-language-server.exe']
    \ }

augroup golang
    let g:LanguageClient_diagnosticsEnable = 0
augroup END

inoremap <silent> <expr> <CR> ncm2_neosnippet#expand_or("\<CR>", 'n')
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

autocmd FileType c,cpp setlocal omnifunc=LanguageClient#complete
autocmd FileType go setlocal omnifunc=LanguageClient#complete
autocmd FileType python setlocal omnifunc=LanguageClient#complete
autocmd FileType rust setlocal omnifunc=LanguageClient#complete
autocmd FileType typescript,javascript setlocal omnifunc=LanguageClient#complete
autocmd FileType dart setlocal omnifunc=LanguageClient#complete
autocmd FileType reason setlocal omnifunc=LanguageClient#complete
