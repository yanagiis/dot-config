lua << EOF
  local lspconfig = require'lspconfig'
  local completion = require'completion'

  local function on_attach()
    completion.on_attach()
  end

  lspconfig.bashls.setup{on_attach=on_attach}
  -- lspconfig.clangd.setup{on_attach=on_attach}
  lspconfig.ccls.setup{on_attach_on_attach}
  lspconfig.dockerls.setup{on_attach=on_attach}
  lspconfig.gopls.setup{on_attach=on_attach}
  lspconfig.rust_analyzer.setup({on_attach=on_attach})
  lspconfig.vimls.setup{on_attach=on_attach}
  lspconfig.sveltels.setup{on_attach=on_attach}
  lspconfig.tsserver.setup{on_attach=on_attach}
  lspconfig.jsonls.setup{on_attach=on_attach}
  lspconfig.pyls.setup{on_attach=on_attach}
  lspconfig.terraformls.setup{on_attach=on_attach}
EOF


let g:completion_enable_auto_signature = 1
let g:completion_enable_snippet = 'UltiSnips'

autocmd BufEnter * lua require'completion'.on_attach()

set omnifunc=v:lua.vim.lsp.omnifunc
set completeopt=menuone,noinsert,noselect
set shortmess+=c
