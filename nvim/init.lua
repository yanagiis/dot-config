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
  -- use {'nvim-lua/completion-nvim'}
  use {'glepnir/lspsaga.nvim'}
  use {'hrsh7th/nvim-compe'}
  use {'nvim-lua/lsp_extensions.nvim'}
  use {'nvim-treesitter/nvim-treesitter'}
  use {'liuchengxu/vista.vim'}
  use {'anott03/nvim-lspinstall'}
  
  -- comment
  use {'tpope/vim-commentary'}

  -- move
  -- use {'easymotion/vim-easymotion'}
  use {
    'phaazon/hop.nvim',
    after = {'vim-code-dark'},
    config = function()
      vim.cmd [[highlight HopNextKey  cterm=bold ctermfg=196 guifg=#ff007c gui=bold blend=0]]
      vim.cmd [[highlight HopNextKey1 cterm=bold ctermfg=202 guifg=#00dfff gui=bold blend=0]]
      vim.cmd [[highlight HopNextKey2 cterm=bold ctermfg=208 guifg=#2b8db3          blend=0]]
    end
  }
  
  -- style
  use {'kyazdani42/nvim-web-devicons'}
  use {
    'hoob3rt/lualine.nvim',
    config = function()
      local lualine = require('lualine')
      lualine.status()
    end,
  }
  use {
    'tomasiser/vim-code-dark',
    config = function()
      vim.cmd [[set background=dark]]
      vim.cmd [[colorscheme codedark]]
    end,
  }
  
  -- finder
  use {'nvim-lua/popup.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-telescope/telescope.nvim',
    config = function()
      local actions = require('telescope.actions')
      require('telescope').setup{
        defaults = {
          vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case'
          },
          file_sorter = require'telescope.sorters'.get_fzy_sorter,
          color_devicons = true,
          use_less = true,
          -- Developer configurations: Not meant for general override
          buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
          mappings = {
            i = {
              ["<C-w>"] = actions.send_selected_to_qflist,
              ["<C-q>"] = actions.send_to_qflist,
            },
            n = {
              ["<C-w>"] = actions.send_selected_to_qflist,
              ["<C-q>"] = actions.send_to_qflist,
            },
          },
        }
      }
  end}

  -- project localrc
  use {
    'embear/vim-localvimrc',
    config = function()
      vim.api.nvim_set_var('localvimrc_name', 'init.vim')
      vim.api.nvim_set_var('localvimrc_sandbox', 0)
    end
  }
  
  -- marks
  use {'sakhnik/nvim-gdb', run='./install.sh'}
  
  -- align
  use {'junegunn/vim-easy-align'}
  
  -- surround
  use {'tpope/vim-surround'}

  -- indent
  use {
    'Yggdroot/indentLine', 
    config = function()
      vim.api.nvim_set_var('indentLine_color_term', 239)
      vim.api.nvim_set_var('indentLine_char', '|')
      vim.api.nvim_set_var('indentLine_enabled', 1)
    end

  }
  
  -- syntax
  use {'sheerun/vim-polyglot'}
  
  -- snippet 
  use {'SirVer/ultisnips'}
  use {'norcalli/snippets.nvim'}

  -- file manager
  use {'preservim/nerdtree'}
  use {'Xuyuanp/nerdtree-git-plugin', after={'nerdtree'}}

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
      vim.api.nvim_set_var('go_def_mapping_enabled', 0)
      vim.api.nvim_set_var('go_gopls_enabled', 0)
    end
  }

  -- rust
  use {'rust-lang/rust.vim'}
  
  -- html
  use {'hail2u/vim-css3-syntax'}
  use {'ap/vim-css-color'}
  use {'tpope/vim-haml'}
  use {'mattn/emmet-vim'}

  -- javascript
  use {'pangloss/vim-javascript'}

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
  use {'vim-scripts/gtags.vim'}

end)

function init_lsp()
  require'compe'.setup {
    enabled = true;
    autocomplete = true;
    debug = true;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    documentation = true;

    source = {
      path = true;
      buffer = true;
      calc = false;
      vsnip = false;
      nvim_lsp = true;
      nvim_lua = true;
      spell = false;
      tags = true;
      snippets_nvim = false;
      treesitter = false;
    };
  }

  local saga = require 'lspsaga'
  saga.init_lsp_saga()

  local lspconfig = require('lspconfig')

  local system_name
  if vim.fn.has("mac") == 1 then
    system_name = "macOS"
  elseif vim.fn.has("unix") == 1 then
    system_name = "Linux"
  elseif vim.fn.has('win32') == 1 then
    system_name = "Windows"
  else
    print("Unsupported system for sumneko")
  end

  -- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
  local sumneko_root_path = '/home/yanagiis/.local/share/nvim/lspinstall/lua-language-server'
  local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

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

  lspconfig.bashls.setup{}
  lspconfig.clangd.setup{}
  lspconfig.dockerls.setup{}
  lspconfig.gopls.setup{}
  lspconfig.rust_analyzer.setup{}
  lspconfig.vimls.setup{}
  lspconfig.svelte.setup{}
  lspconfig.tsserver.setup{}
  lspconfig.jsonls.setup{}
  lspconfig.pyls.setup{}
  lspconfig.terraformls.setup{}
  lspconfig.cmake.setup{}

  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = true,
      signs = true,
      update_in_insert = false,
    }
  )
end

init_lsp()
vim.cmd [[source ~/.config/nvim/basic.vim]]
vim.cmd [[source ~/.config/nvim/keybinding.vim]]
vim.cmd [[autocmd BufWritePost init.lua PackerCompile]]
