local lsp = require('lspconfig')
local config = require('lang')

lsp.rls.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  rust = { unstable_features = true, build_on_save = false, all_features = true }
}
