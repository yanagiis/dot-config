function init_lsp()
  local lspconfig = require'lspconfig'
  local completion = require'completion'

  local function on_attach()
    completion.on_attach()
  end

  local sumneko_root_path = '~/projects/lua-language-server'
  local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"

  lspconfig.bashls.setup{on_attach=on_attach}
  lspconfig.ccls.setup{on_attach_on_attach}
  lspconfig.dockerls.setup{on_attach=on_attach}
  lspconfig.gopls.setup{on_attach=on_attach}
  lspconfig.rust_analyzer.setup({on_attach=on_attach})
  lspconfig.vimls.setup{on_attach=on_attach}
  lspconfig.svelte.setup{on_attach=on_attach}
  lspconfig.tsserver.setup{on_attach=on_attach}
  lspconfig.jsonls.setup{on_attach=on_attach}
  lspconfig.pyls.setup{on_attach=on_attach}
  lspconfig.terraformls.setup{on_attach=on_attach}
  lspconfig.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
          -- Setup your lua path
          path = vim.split(package.path, ';'),
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = {'vim'},
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = {
            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          },
        },
      },
    },
  }

  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = true,
      signs = true,
      update_in_insert = false,
    }
  )

  vim.api.nvim_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  vim.api.nvim_set_option('completeopt', 'menuone,noinsert,noselect')
  vim.api.nvim_set_option('shortmess', vim.api.nvim_get_option('shortmess') .. 'c')
end

function init_post()
  vim.cmd [[source ~/.config/nvim/basic.vim]]
  vim.cmd [[source ~/.config/nvim/keybinding.vim]]
  vim.cmd [[set background=dark]]
  vim.cmd [[colorscheme PaperColor]]
end

function init_lualine()
  local lualine = require('lualine')
  lualine.status()
end

function init_git()
  vim.api.nvim_set_var('gitgutter_enabled', 1)
end

function init_go()
  vim.api.nvim_set_var('go_imports_autosave', 1)
end

function init_svelte()
  vim.api.nvim_set_var('vim_svelte_plugin_load_full_syntax', 1)
  vim.api.nvim_set_var('vim_svelte_plugin_use_typescript', 1)
  vim.api.nvim_set_var('vim_svelte_plugin_use_sass', 1)
end

vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- language server
  use {'neovim/nvim-lspconfig'}
  use {'nvim-lua/completion-nvim'}
  use {'nvim-lua/lsp_extensions.nvim'}
  use {'nvim-treesitter/nvim-treesitter'}
  use {'liuchengxu/vista.vim'}
  
  -- comment
  use {'tpope/vim-commentary'}
  
  -- style
  use {'kyazdani42/nvim-web-devicons'}
  use {'hoob3rt/lualine.nvim'}
  use {'easymotion/vim-easymotion'}
  use {'NLKNguyen/papercolor-theme'}
  
  -- finder
  use {'nvim-lua/popup.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-telescope/telescope.nvim'}
  
  -- debugger
  use {'sakhnik/nvim-gdb', run = "./install.sh"}
  
  -- marks
  use {'kshenoy/vim-signature'}
  
  -- align
  use {'junegunn/vim-easy-align'}
  
  -- surround
  use {'tpope/vim-surround'}
  
  -- syntax
  use {'sheerun/vim-polyglot'}
  
  -- snippet 
  use {'SirVer/ultisnips'}
  use {'honza/vim-snippets'}

  -- file manager
  use {'kyazdani42/nvim-tree.lua'}

  -- git
  use {'airblade/vim-gitgutter'}
  use {'gregsexton/gitv'}
  use {'sodapopcan/vim-twiggy'}
  use {'tpope/vim-fugitive'}
  use {'kdheepak/lazygit.vim'}
  
  -- go
  use {'fatih/vim-go', run=function() vim.cmd('GoUpdateBinaries') end}

  -- rust
  use {'rust-lang/rust.vim'}
  
  -- html
  use {'hail2u/vim-css3-syntax'}
  use {'ap/vim-css-color'}
  use {'tpope/vim-haml'}
  use {'mattn/emmet-vim'}

  -- typescript
  use {'HerringtonDarkholme/yats.vim'}
  use {'jason0x43/vim-js-indent'}
  
  -- python
  use {'raimon49/requirements.txt.vim'}
  use {'heavenshell/vim-pydocstring'}
  
  -- meson
  use {'stfl/meson.vim'}
  
  -- svelte
  use {'leafOfTree/vim-svelte-plugin'}
  
  -- misc
  use {'tommcdo/vim-kangaroo'}
end)

init_lsp()
init_lualine()
init_go()
init_git()
init_svelte()
init_post()
