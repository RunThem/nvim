local lsp = require('lspconfig')
local config = require('lang')

local bash_lsp = config.path ..
                         'bash/node_modules/bash-language-server/bin/main.js'

lsp.bashls.setup({
  cmd = { bash_lsp, 'start' },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
})
