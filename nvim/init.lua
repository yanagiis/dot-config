local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
    -- TODO: Maybe handle windows better?
    if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
        return
    end

    local directory = string.format(
    '%s/site/pack/packer/opt/',
    vim.fn.stdpath('data')
    )

    vim.fn.mkdir(directory, 'p')

    local out = vim.fn.system(string.format(
    'git clone %s %s',
    'https://github.com/wbthomason/packer.nvim',
    directory .. '/packer.nvim'
    ))

    print(out)
    print("Downloading packer.nvim...")

    return
end

require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- language server
  use {'neovim/nvim-lspconfig'}
  use {
    'nvim-lua/completion-nvim',
    after = 'neovim/nvim-lspconfig',
    config = function ()
      local completion = require'completion'
      local function on_attach()
        completion.on_attach()
      end

      local sumneko_root_path = '~/projects/lua-language-server'
      local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"

      local lspconfig = require('lspconfig')
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
          virtual_text = false,
          signs = true,
          update_in_insert = false,
        }
      )
    end,
  }
  use {'nvim-lua/lsp_extensions.nvim'}
  use {'nvim-treesitter/nvim-treesitter'}
  use {'liuchengxu/vista.vim'}
  
  -- comment
  use {'tpope/vim-commentary'}
  
  -- style
  use {'kyazdani42/nvim-web-devicons'}
  use {
    'hoob3rt/lualine.nvim',
    config = function()
      local lualine = require('lualine')
      lualine.status()
    end,
  }
  use {'easymotion/vim-easymotion'}
  use {
    'NLKNguyen/papercolor-theme',
    config = function()
      vim.cmd [[set background=dark]]
      vim.cmd [[colorscheme PaperColor]]
      vim.cmd [[set background=dark]]
      vim.cmd [[colorscheme PaperColor]]
    end,
  }
  
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
  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
        local g = vim.g
        local map = vim.api.nvim_set_keymap
        g.lua_tree_side = 'left' -- left by default
        g.lua_tree_width = 40 -- 30 by default
        g.lua_tree_auto_open            = 0 -- 0 by default, opens the tree when typing `vim $DIR` or `vim`
        g.lua_tree_auto_close           = 1 -- 0 by default, closes the tree when it's the last window
        g.lua_tree_quit_on_open         = 1 -- 0 by default, closes the tree when you open a file
        g.lua_tree_follow               = 1 -- 0 by default, this option allows the cursor to be updated when entering a buffer
        g.lua_tree_indent_markers       = 1 -- 0 by default, this option shows indent markers when folders are open
        g.lua_tree_hide_dotfiles        = 1 -- 0 by default, this option hides files and folders starting with a dot `.`
        g.lua_tree_git_hl               = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
        g.lua_tree_root_folder_modifier = ':~' -- This is the default. See :help filename-modifiers for more options
        g.lua_tree_tab_open             = 1 -- 0 by default, will open the tree when entering a new tab and the tree was previously open
        g.lua_tree_allow_resize         = 1 -- 0 by default, will not resize the tree when opening a file

        g.lua_tree_icons = {
            default = '',
            symlink = '',
            git = {
                unstaged  = "✗",
                staged    = "✓",
                unmerged  = "",
                renamed   = "➜",
                untracked = "★"
            },
            folder = {
                default = "",
                open = ""
            }
        }
      end,
  }

  -- git
  use {
    'airblade/vim-gitgutter',
    config = function()
      vim.api.nvim_set_var('gitgutter_enabled', 1)
    end,
  }
  use {'gregsexton/gitv'}
  use {'sodapopcan/vim-twiggy'}
  use {'tpope/vim-fugitive'}
  use {'kdheepak/lazygit.vim'}
  
  -- go
  use {
    'fatih/vim-go',
    run=function() vim.cmd('GoUpdateBinaries') end,
    config = function()
      vim.api.nvim_set_var('go_imports_autosave', 1)
    end
  }

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
  use {
    'leafOfTree/vim-svelte-plugin',
    config = function()
      vim.api.nvim_set_var('vim_svelte_plugin_load_full_syntax', 1)
      vim.api.nvim_set_var('vim_svelte_plugin_use_typescript', 1)
      vim.api.nvim_set_var('vim_svelte_plugin_use_sass', 1)
    end,
  }
  
  -- misc
  use {'tommcdo/vim-kangaroo'}
end)

vim.cmd [[source ~/.config/nvim/basic.vim]]
vim.cmd [[source ~/.config/nvim/keybinding.vim]]
