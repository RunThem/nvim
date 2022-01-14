local M = {}

function M.setup()
  local utils = require('utils')
  local lsp_installer = require('nvim-lsp-installer')
  local lsp_installer_servers = require('nvim-lsp-installer.servers')

  -- lsp: lua, bash
  local lsp_servers = { 'sumneko_lua', 'bashls' }

  for _, server in ipairs(lsp_servers) do
    local ok, lsp = lsp_installer_servers.get_server(server)
    if ok then
      if not lsp:is_installed() then
        utils.info('[lsp] install...')
        lsp:install()
      end
    end
  end

  lsp_installer.on_server_ready(function(server)
    server:setup{}
  end)

end

return M
