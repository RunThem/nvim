local lsp = require('lspconfig')
local lsp_config = require('plugin.config.nvim-lspconfig')

local sumneko_root_path = vim.fn.getenv('HOME') ..
                            '/.local/share/nvim/lsp_servers/' -- Change to your sumneko root installation
local sumneko_binary = sumneko_root_path ..
                         'sumneko_lua/extension/server/bin/Linux/lua-language-server'

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

lsp.sumneko_lua.setup {
  cmd = { sumneko_binary, '-E',
          sumneko_root_path .. '/sumneko_lua/extension/server/main.lua',
          '--locale=zh-cn' },
  on_attach = lsp_config.on_attach,
  capabilities = lsp_config.capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
       },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
       },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file('', true),
       },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = { enable = false },
     },
   },
 }
