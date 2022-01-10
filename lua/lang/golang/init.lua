local lsp = require('lspconfig')
local config = require('lang')

lsp.gopls.setup {
  cmd = { 'gopls' },
  on_attach = config.on_attach,
  capabilities = config.capabilities
}
