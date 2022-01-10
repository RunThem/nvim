local lsp = require('lspconfig')
local config = require('lang')

local sumneko_binary = config.path ..
                         'sumneko_lua/extension/server/bin/lua-language-server'

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

lsp.sumneko_lua.setup({
  cmd = {
    sumneko_binary, '-E',
    config.path .. '/sumneko_lua/extension/server/main.lua'
  },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT', path = runtime_path },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file('', true)
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = { enable = false }
    }
  }
})
