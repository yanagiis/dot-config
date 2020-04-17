lua << EOF
  local nvim_lsp = require'nvim_lsp'
  local completion = require'completion'

  nvim_lsp.bashls.setup{on_attach=completion.on_attach}
  nvim_lsp.clangd.setup{on_attach=completion.on_attach}
  nvim_lsp.dockerls.setup{on_attach=completion.on_attach}
  nvim_lsp.gopls.setup{on_attach=completion.on_attach}
  nvim_lsp.rust_analyzer.setup({on_attach=completion.on_attach})
  nvim_lsp.vimls.setup{on_attach=completion.on_attach}
  nvim_lsp.sveltels.setup{on_attach=completion.on_attach}
  nvim_lsp.tsserver.setup{on_attach=completion.on_attach}

  do
    local method = 'textDocument/publishDiagnostics'
    local default_callback = vim.lsp.callbacks[method]
    vim.lsp.callbacks[method] = function(err, method, result, client_id)
      if not result then return end
      local uri = result.uri
      local bufnr = vim.uri_to_bufnr(uri)
      if not bufnr then
        err_message("LSP.publishDiagnostics: Couldn't find buffer for ", uri)
        return
      end
      vim.lsp.util.buf_clear_diagnostics(bufnr)
      vim.lsp.util.buf_diagnostics_save_positions(bufnr, result.diagnostics)
      vim.lsp.util.buf_diagnostics_underline(bufnr, result.diagnostics)
    end
  end
EOF


let g:completion_enable_auto_signature = 1

autocmd Filetype svelte let g:completion_enable_auto_signature = 0
autocmd BufEnter * lua require'completion'.on_attach()

set omnifunc=v:lua.vim.lsp.omnifunc
set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:completion_enable_snippet = 'UltiSnips'
