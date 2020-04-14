lua << EOF
  local nvim_lsp = require'nvim_lsp'
  local ncm2 = require('ncm2')

  nvim_lsp.bashls.setup{on_init=ncm2.register_lsp_source}
  nvim_lsp.clangd.setup{on_init=ncm2.register_lsp_source}
  nvim_lsp.dockerls.setup{on_init=ncm2.register_lsp_source}
  nvim_lsp.gopls.setup{on_init=ncm2.register_lsp_source}
  nvim_lsp.rust_analyzer.setup({on_init=ncm2.register_lsp_source})
  nvim_lsp.vimls.setup{on_init=ncm2.register_lsp_source}
  nvim_lsp.sveltels.setup{on_init=ncm2.register_lsp_source}
  nvim_lsp.tsserver.setup{on_init=ncm2.register_lsp_source}

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

set omnifunc=v:lua.vim.lsp.omnifunc

autocmd Filetype svelte let g:completion_enable_auto_signature = 0
