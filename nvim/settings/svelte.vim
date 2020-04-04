Plug 'leafOfTree/vim-svelte-plugin'

let g:vim_svelte_plugin_load_full_syntax = 1
let g:vim_svelte_plugin_use_typescript = 1
let g:vim_svelte_plugin_use_sass = 1

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['svelte', 'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
