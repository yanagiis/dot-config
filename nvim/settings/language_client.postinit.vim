lua << EOF
  local nvim_lsp = require'nvim_lsp'
  nvim_lsp.bashls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.clangd.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.dockerls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.gopls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.rust_analyzer.setup({on_attach=require'completion'.on_attach})
  nvim_lsp.vimls.setup{on_attach=require'completion'.on_attach}

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
EOF

set omnifunc=v:lua.vim.lsp.omnifunc
