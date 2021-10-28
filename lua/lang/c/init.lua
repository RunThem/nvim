local lsp = require('lspconfig')
local lsp_config = require('plugin.config.nvim-lspconfig')

lsp.clangd.setup {
  cmd = {
    '/home/iccy/.local/share/nvim/lsp_servers/clangd/clangd',
    '--background-index',
    '--suggest-missing-includes',
    '--clang-tidy',
    '--header-insertion=iwyu',
  },
  on_attach = lsp_config.on_attach,
  capabilities = lsp_config.capabilities,
}
