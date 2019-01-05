Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

let g:LanguageClient_serverCommands = {
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ 'go': ['go-langserver', '-gocodecompletion'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'python': ['pyls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'dart': ['dart_language_server'],
    \ 'reason': ['/home/yanagiis/bin/reason-language-server.exe']
    \ }

autocmd FileType c,cpp setlocal omnifunc=LanguageClient#complete
autocmd FileType go setlocal omnifunc=LanguageClient#complete
autocmd FileType python setlocal omnifunc=LanguageClient#complete
autocmd FileType rust setlocal omnifunc=LanguageClient#complete
autocmd FileType typescript,javascript setlocal omnifunc=LanguageClient#complete
autocmd FileType dart setlocal omnifunc=LanguageClient#complete
autocmd FileType reason setlocal omnifunc=LanguageClient#complete
