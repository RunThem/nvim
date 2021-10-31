local lsp = require('lspconfig')
local config = require('lang')

lsp.clangd.setup {
  cmd = {
    config.path .. 'clangd/clangd',
    '--background-index',
    '--suggest-missing-includes',
    '--clang-tidy',
    '--header-insertion=iwyu',
  },
  on_attach = config.lsp_config.on_attach,
  capabilities = config.cmp_config.capabilities,
}
