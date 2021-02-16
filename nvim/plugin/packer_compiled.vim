" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/yanagiis/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/yanagiis/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/yanagiis/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/yanagiis/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/yanagiis/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  gitv = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/gitv"
  },
  ["gtags.vim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/gtags.vim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n§\2\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0Phighlight HopNextKey2 cterm=bold ctermfg=208 guifg=#2b8db3          blend=0Phighlight HopNextKey1 cterm=bold ctermfg=202 guifg=#00dfff gui=bold blend=0Phighlight HopNextKey  cterm=bold ctermfg=196 guifg=#ff007c gui=bold blend=0\bcmd\bvim\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/opt/hop.nvim"
  },
  indentLine = {
    config = { "\27LJ\2\n£\1\0\0\4\0\a\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3ï\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0'\3\5\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0)\3\1\0B\0\3\1K\0\1\0\23indentLine_enabled\6|\20indentLine_char\26indentLine_color_term\17nvim_set_var\bapi\bvim\0" },
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lazygit.vim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/lazygit.vim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\vstatus\flualine\frequire\0" },
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["meson.vim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/meson.vim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/opt/nerdtree-git-plugin"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-gdb"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/nvim-gdb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["requirements.txt.vim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/requirements.txt.vim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/rust.vim"
  },
  ["snippets.nvim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nü\3\0\0\b\0\24\0&6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\22\0005\4\5\0005\5\4\0=\5\6\0046\5\0\0'\a\a\0B\5\2\0029\5\b\5=\5\t\0046\5\0\0'\a\n\0B\5\2\0029\5\v\5=\5\v\0045\5\17\0005\6\r\0009\a\f\0=\a\14\0069\a\15\0=\a\16\6=\6\18\0055\6\19\0009\a\f\0=\a\14\0069\a\15\0=\a\16\6=\6\20\5=\5\21\4=\4\23\3B\1\2\1K\0\1\0\rdefaults\1\0\0\rmappings\6n\1\0\0\6i\1\0\0\n<C-q>\19send_to_qflist\n<C-w>\1\0\0\28send_selected_to_qflist\27buffer_previewer_maker\25telescope.previewers\16file_sorter\19get_fzy_sorter\22telescope.sorters\22vimgrep_arguments\1\0\2\ruse_less\2\19color_devicons\2\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-code-dark"] = {
    after = { "hop.nvim" },
    only_config = true
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-css3-syntax"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-css3-syntax"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    config = { "\27LJ\2\nJ\0\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\1K\0\1\0\22gitgutter_enabled\17nvim_set_var\bapi\bvim\0" },
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-go"] = {
    config = { "\27LJ\2\n¤\1\0\0\4\0\6\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0)\3\0\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0)\3\0\0B\0\3\1K\0\1\0\21go_gopls_enabled\27go_def_mapping_enabled\24go_imports_autosave\17nvim_set_var\bapi\bvim\0" },
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-haml"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-haml"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-javascript"
  },
  ["vim-js-indent"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-js-indent"
  },
  ["vim-kangaroo"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-kangaroo"
  },
  ["vim-localvimrc"] = {
    config = { "\27LJ\2\n|\0\0\4\0\6\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0)\3\0\0B\0\3\1K\0\1\0\23localvimrc_sandbox\rinit.vim\20localvimrc_name\17nvim_set_var\bapi\bvim\0" },
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-localvimrc"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-pydocstring"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-pydocstring"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-svelte-plugin"] = {
    config = { "\27LJ\2\nÇ\1\0\0\4\0\6\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0)\3\1\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0)\3\1\0B\0\3\1K\0\1\0\31vim_svelte_plugin_use_sass%vim_svelte_plugin_use_typescript'vim_svelte_plugin_load_full_syntax\17nvim_set_var\bapi\bvim\0" },
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-svelte-plugin"
  },
  ["vim-twiggy"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vim-twiggy"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/start/yats.vim"
  }
}

-- Config for: telescope.nvim
try_loadstring("\27LJ\2\nü\3\0\0\b\0\24\0&6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\22\0005\4\5\0005\5\4\0=\5\6\0046\5\0\0'\a\a\0B\5\2\0029\5\b\5=\5\t\0046\5\0\0'\a\n\0B\5\2\0029\5\v\5=\5\v\0045\5\17\0005\6\r\0009\a\f\0=\a\14\0069\a\15\0=\a\16\6=\6\18\0055\6\19\0009\a\f\0=\a\14\0069\a\15\0=\a\16\6=\6\20\5=\5\21\4=\4\23\3B\1\2\1K\0\1\0\rdefaults\1\0\0\rmappings\6n\1\0\0\6i\1\0\0\n<C-q>\19send_to_qflist\n<C-w>\1\0\0\28send_selected_to_qflist\27buffer_previewer_maker\25telescope.previewers\16file_sorter\19get_fzy_sorter\22telescope.sorters\22vimgrep_arguments\1\0\2\ruse_less\2\19color_devicons\2\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
-- Config for: vim-localvimrc
try_loadstring("\27LJ\2\n|\0\0\4\0\6\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0)\3\0\0B\0\3\1K\0\1\0\23localvimrc_sandbox\rinit.vim\20localvimrc_name\17nvim_set_var\bapi\bvim\0", "config", "vim-localvimrc")
-- Config for: vim-gitgutter
try_loadstring("\27LJ\2\nJ\0\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\1K\0\1\0\22gitgutter_enabled\17nvim_set_var\bapi\bvim\0", "config", "vim-gitgutter")
-- Config for: vim-code-dark
try_loadstring("\27LJ\2\n\\\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0\25colorscheme codedark\24set background=dark\bcmd\bvim\0", "config", "vim-code-dark")
-- Config for: vim-go
try_loadstring("\27LJ\2\n¤\1\0\0\4\0\6\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0)\3\0\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0)\3\0\0B\0\3\1K\0\1\0\21go_gopls_enabled\27go_def_mapping_enabled\24go_imports_autosave\17nvim_set_var\bapi\bvim\0", "config", "vim-go")
-- Config for: indentLine
try_loadstring("\27LJ\2\n£\1\0\0\4\0\a\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3ï\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0'\3\5\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0)\3\1\0B\0\3\1K\0\1\0\23indentLine_enabled\6|\20indentLine_char\26indentLine_color_term\17nvim_set_var\bapi\bvim\0", "config", "indentLine")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\vstatus\flualine\frequire\0", "config", "lualine.nvim")
-- Config for: vim-svelte-plugin
try_loadstring("\27LJ\2\nÇ\1\0\0\4\0\6\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0)\3\1\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0)\3\1\0B\0\3\1K\0\1\0\31vim_svelte_plugin_use_sass%vim_svelte_plugin_use_typescript'vim_svelte_plugin_load_full_syntax\17nvim_set_var\bapi\bvim\0", "config", "vim-svelte-plugin")
-- Load plugins in order defined by `after`
vim.cmd [[ packadd hop.nvim ]]

-- Config for: hop.nvim
try_loadstring("\27LJ\2\n§\2\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0Phighlight HopNextKey2 cterm=bold ctermfg=208 guifg=#2b8db3          blend=0Phighlight HopNextKey1 cterm=bold ctermfg=202 guifg=#00dfff gui=bold blend=0Phighlight HopNextKey  cterm=bold ctermfg=196 guifg=#ff007c gui=bold blend=0\bcmd\bvim\0", "config", "hop.nvim")

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
