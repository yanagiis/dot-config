Plug 'w0rp/ale'

" Ale
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'javascript.jsx': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'typescriptreact': ['prettier', 'eslint'],
\   'css': ['prettier'],
\   'json': ['prettier'],
\   'python': ['yapf', 'isort'],
\   'svelte': ['prettier', 'eslint'],
\}

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_lint_delay = 100
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

let g:ale_linter_aliases = {'svelte': ['css', 'javascript']}
let g:ale_linters = {
  \ 'python': ['pylint', 'yapf'],
  \ 'rust': ['rls'],
  \ 'c': ['clangtidy'],
  \ 'cpp': ['clangtidy'],
  \ 'svelte': ['stylelint', 'eslint', 'tsserver'],
  \}

let g:airline#extensions#ale#enabled = 1

nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

command! ALEToggleFixer execute "let g:ale_fix_on_save = get(g:, 'ale_fix_on_save', 0) ? 0 : 1"
highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500
highlight ALEWarningSign ctermfg=11 ctermbg=15 guifg=#ED6237
