" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif
try

lua << END
local plugins = {
  ["packer.nvim"] = {
    loaded = false,
    only_sequence = false,
    only_setup = false,
    path = "/home/yanagiis/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  }
}

local function handle_bufread(names)
  for _, name in ipairs(names) do
    local path = plugins[name].path
    for _, dir in ipairs({ 'ftdetect', 'ftplugin', 'after/ftdetect', 'after/ftplugin' }) do
      if #vim.fn.finddir(dir, path) > 0 then
        vim.cmd('doautocmd BufRead')
        return
      end
    end
  end
end

local packer_load = nil
local function handle_after(name, before)
  local plugin = plugins[name]
  plugin.load_after[before] = nil
  if next(plugin.load_after) == nil then
    packer_load({name}, {})
  end
end

packer_load = function(names, cause)
  local some_unloaded = false
  for _, name in ipairs(names) do
    if not plugins[name].loaded then
      some_unloaded = true
      break
    end
  end

  if not some_unloaded then return end

  local fmt = string.format
  local del_cmds = {}
  local del_maps = {}
  for _, name in ipairs(names) do
    if plugins[name].commands then
      for _, cmd in ipairs(plugins[name].commands) do
        del_cmds[cmd] = true
      end
    end

    if plugins[name].keys then
      for _, key in ipairs(plugins[name].keys) do
        del_maps[key] = true
      end
    end
  end

  for cmd, _ in pairs(del_cmds) do
    vim.cmd('silent! delcommand ' .. cmd)
  end

  for key, _ in pairs(del_maps) do
    vim.cmd(fmt('silent! %sunmap %s', key[1], key[2]))
  end

  for _, name in ipairs(names) do
    if not plugins[name].loaded then
      vim.cmd('packadd ' .. name)
      if plugins[name].config then
        for _i, config_line in ipairs(plugins[name].config) do
          loadstring(config_line)()
        end
      end

      if plugins[name].after then
        for _, after_name in ipairs(plugins[name].after) do
          handle_after(after_name, name)
          vim.cmd('redraw')
        end
      end

      plugins[name].loaded = true
    end
  end

  handle_bufread(names)

  if cause.cmd then
    local lines = cause.l1 == cause.l2 and '' or (cause.l1 .. ',' .. cause.l2)
    vim.cmd(fmt('%s%s%s %s', lines, cause.cmd, cause.bang, cause.args))
  elseif cause.keys then
    local keys = cause.keys
    local extra = ''
    while true do
      local c = vim.fn.getchar(0)
      if c == 0 then break end
      extra = extra .. vim.fn.nr2char(c)
    end

    if cause.prefix then
      local prefix = vim.v.count ~= 0 and vim.v.count or ''
      prefix = prefix .. '"' .. vim.v.register .. cause.prefix
      if vim.fn.mode('full') == 'no' then
        if vim.v.operator == 'c' then
          prefix = '' .. prefix
        end

        prefix = prefix .. vim.v.operator
      end

      vim.fn.feedkeys(prefix, 'n')
    end

    local escaped_keys = vim.api.nvim_replace_termcodes(cause.keys .. extra, true, true, true)
    vim.api.nvim_feedkeys(escaped_keys, 'm', true)
  elseif cause.event then
    vim.cmd(fmt('doautocmd <nomodeline> %s', cause.event))
  elseif cause.ft then
    vim.cmd(fmt('doautocmd <nomodeline> %s FileType %s', 'filetypeplugin', cause.ft))
    vim.cmd(fmt('doautocmd <nomodeline> %s FileType %s', 'filetypeindent', cause.ft))
  end
end

_packer_load_wrapper = function(names, cause)
  success, err_msg = pcall(packer_load, names, cause)
  if not success then
    vim.cmd('echohl ErrorMsg')
    vim.cmd('echomsg "Error in packer_compiled: ' .. vim.fn.escape(err_msg, '"') .. '"')
    vim.cmd('echomsg "Please check your config for correctness"')
    vim.cmd('echohl None')
  end
end

-- Runtimepath customization

-- Pre-load configuration
-- Post-load configuration
-- Config for: lualine.nvim
loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\vstatus\flualine\frequire\0")()
-- Config for: completion-nvim
loadstring("\27LJ\2\n#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\14on_attachÃ\b\1\0\15\0@\0Ä\0016\0\0\0'\2\1\0B\0\2\0023\1\2\0'\2\3\0\18\3\2\0'\4\4\0&\3\4\0036\4\0\0'\6\5\0B\4\2\0029\5\6\0049\5\a\0055\a\b\0=\1\t\aB\5\2\0019\5\n\0049\5\a\0054\a\3\0006\b\v\0>\b\1\aB\5\2\0019\5\f\0049\5\a\0055\a\r\0=\1\t\aB\5\2\0019\5\14\0049\5\a\0055\a\15\0=\1\t\aB\5\2\0019\5\16\0049\5\a\0055\a\17\0=\1\t\aB\5\2\0019\5\18\0049\5\a\0055\a\19\0=\1\t\aB\5\2\0019\5\20\0049\5\a\0055\a\21\0=\1\t\aB\5\2\0019\5\22\0049\5\a\0055\a\23\0=\1\t\aB\5\2\0019\5\24\0049\5\a\0055\a\25\0=\1\t\aB\5\2\0019\5\26\0049\5\a\0055\a\27\0=\1\t\aB\5\2\0019\5\28\0049\5\a\0055\a\29\0=\1\t\aB\5\2\0019\5\30\0049\5\a\0055\a!\0005\b\31\0>\3\1\b\18\t\2\0'\n \0&\t\n\t>\t\3\b=\b\"\a5\b6\0005\t)\0005\n#\0006\v$\0009\v%\v6\r&\0009\r'\r'\14(\0B\v\3\2=\v'\n=\n*\t5\n,\0005\v+\0=\v-\n=\n.\t5\n3\0004\v\0\b6\f$\0009\f/\f9\f0\f'\0141\0B\f\2\2+\r\2\0<\r\f\v6\f$\0009\f/\f9\f0\f'\0142\0B\f\2\2+\r\2\0<\r\f\v=\v4\n=\n5\t=\t7\b=\b8\aB\5\2\0016\5$\0009\0059\0059\5:\0056\6$\0009\0069\0069\6<\0066\b$\0009\b9\b9\b=\b9\b>\b5\t?\0B\6\3\2=\6;\0052\0\0ÄK\0\1\0\1\0\3\17virtual_text\1\21update_in_insert\1\nsigns\2\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\6;\tpath\fpackage\nsplit\bvim\1\0\1\fversion\vLuaJIT\bcmd\1\0\0\14/main.lua\1\3\0\0\0\a-E\16sumneko_lua\1\0\0\16terraformls\1\0\0\tpyls\1\0\0\vjsonls\1\0\0\rtsserver\1\0\0\vsvelte\1\0\0\nvimls\1\0\0\18rust_analyzer\1\0\0\ngopls\1\0\0\rdockerls\24on_attach_on_attach\tccls\14on_attach\1\0\0\nsetup\vbashls\14lspconfig#/bin/Linux/lua-language-server#~/projects/lua-language-server\0\15completion\frequire\0")()
-- Config for: vim-go
loadstring("\27LJ\2\nL\0\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\1K\0\1\0\24go_imports_autosave\17nvim_set_var\bapi\bvim\0")()
-- Config for: vim-gitgutter
loadstring("\27LJ\2\nJ\0\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\1K\0\1\0\22gitgutter_enabled\17nvim_set_var\bapi\bvim\0")()
-- Config for: vim-svelte-plugin
loadstring("\27LJ\2\n«\1\0\0\4\0\6\0\0196\0\0\0009\0\1\0009\0\2\0'\2\3\0)\3\1\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\4\0)\3\1\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0)\3\1\0B\0\3\1K\0\1\0\31vim_svelte_plugin_use_sass%vim_svelte_plugin_use_typescript'vim_svelte_plugin_load_full_syntax\17nvim_set_var\bapi\bvim\0")()
-- Config for: papercolor-theme
loadstring("\27LJ\2\n~\0\0\3\0\4\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0\27colorscheme PaperColor\24set background=dark\bcmd\bvim\0")()
-- Conditional loads
-- Load plugins in order defined by `after`
END

function! s:load(names, cause) abort
  call luaeval('_packer_load_wrapper(_A[1], _A[2])', [a:names, a:cause])
endfunction


" Command lazy-loads

" Keymap lazy-loads

augroup packer_load_aucmds
  au!
  " Filetype lazy-loads
  " Event lazy-loads
  " Function lazy-loads
augroup END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
