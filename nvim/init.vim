if has('vim_starting')
  set nocompatible               " Be iMproved
endif

set shell=/bin/zsh

let g:VIMPATH=expand("~/.config/nvim/")
let g:PLUGGED_PATH=g:VIMPATH . "plugged/"

runtime! settings/vim-plug.vim

" { Plugins
call plug#begin(g:PLUGGED_PATH)

runtime! settings/nerdtree.vim
runtime! settings/tagbar.vim
runtime! settings/vim-commentary.vim
runtime! settings/lightline.vim
runtime! settings/gtags.vim
runtime! settings/denite.vim
runtime! settings/easymotion.vim
runtime! settings/kangaroo.vim
runtime! settings/color.vim
runtime! settings/fuzzy.vim
runtime! settings/ack.vim
runtime! settings/vim-grepper.vim
runtime! settings/debug.vim
runtime! settings/vim-signature.vim
runtime! settings/vim-session.vim
runtime! settings/fish.vim
runtime! settings/align.vim
" runtime! settings/ale.vim
runtime! settings/language_client.vim
runtime! settings/vim-surround.vim
runtime! settings/syntax.vim

runtime! settings/git.vim

" {{ language
runtime! settings/go.vim
runtime! settings/html.vim
runtime! settings/python.vim
runtime! settings/meson.vim
runtime! settings/css.vim
runtime! settings/typescript.vim
runtime! settings/proto.vim
runtime! settings/doxygen.vim
runtime! settings/markdown.vim
runtime! settings/dart.vim
runtime! settings/svelte.vim
" }}

call plug#end()
" }

lua << EOF
  local nvim_lsp = require'nvim_lsp'
  nvim_lsp.gopls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.vimls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.dockerls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.bashls.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.clangd.setup{on_attach=require'completion'.on_attach}
  nvim_lsp.rust_analyzer.setup({on_attach=require'completion'.on_attach})
  nvim_lsp.sveltels.setup({on_attach=require'completion'.on_attach})

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

source ~/.config/nvim/basic.vim
source ~/.config/nvim/keybinding.vim

set background=dark
colorscheme PaperColor

call DenitePost()
