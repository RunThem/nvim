local lsp = require('lspconfig')
local config = require('lang')
local fn = vim.fn

local lua_lsp = config.path .. 'sumneko_lua/extension/server/'

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

lsp.sumneko_lua.setup({
  cmd = { lua_lsp .. 'bin/lua-language-server', '-E', lua_lsp .. 'main.lua' },
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
        -- library = vim.api.nvim_get_runtime_file('', true)
        library = {
          [fn.expand('$VIMRUNTIME/lua')] = true,
          [fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
        }
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = { enable = false }
    }
  }
})
