Plug 'w0rp/ale'

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_lint_delay = 500
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

let g:ale_linters = { 'python': ['pylint', 'yapf'], 'rust': ['rls'], 'c': ['clangtidy'], 'cpp': ['clangtidy'] }
