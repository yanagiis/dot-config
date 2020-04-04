local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'

local server_name = "sveltels"
local bin_name = "svelteserver"

local installer = util.npm_installer {
  server_name = server_name;
  packages = { "svelte-language-server" };
  binaries = {bin_name};
}

configs[server_name] = {
  default_config = {
    cmd = {bin_name, "--stdio"};
    filetypes = {"svelte"};
    root_dir = util.root_pattern("package.json");
  };
  on_new_config = function(new_config)
    local install_info = installer.info()
    if install_info.is_installed then
      if type(new_config.cmd) == 'table' then
        -- Try to preserve any additional args from upstream changes.
        new_config.cmd[1] = install_info.binaries[bin_name]
      else
        new_config.cmd = {install_info.binaries[bin_name]}
      end
    end
  end;
  docs = {
    description = [[
https://github.com/UnwrittenFun/svelte-language-server
`svelte-language-server` can be installed via `:LspInstall sveltels` or by yourself with `npm`:
```sh
npm install -g svelte-language-server
```
    ]];
    default_config = {
      root_dir = [[root_pattern("package.json")]];
    };
  };
};

configs[server_name].install = installer.install
configs[server_name].install_info = installer.info
-- vim:et ts=2 sw=2
