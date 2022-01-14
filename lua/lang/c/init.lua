local lsp = require('lspconfig')
local config = require('lang')

lsp.clangd.setup({
  cmd = {
    'clangd', '--background-index', '--suggest-missing-includes',
    '--clang-tidy', '--header-insertion=iwyu'
  },
  on_attach = config.on_attach,
  capabilities = config.capabilities
})

-- lsp.ccls.setup({
--   on_attach = config.on_attach,
--   capabilities = config.capabilities,
-- })
