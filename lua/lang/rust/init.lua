local lsp = require('lspconfig')
local config = require('lang')

lsp.rls.setup {
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  rust = {
    unstable_features = true,
    build_on_save = false,
    all_features = true,
  }
}

require('formatter').setup({
  filetype = {
    rust = {
      function()
        return {
          exe = 'rustfmt',
          stdin = false,
          cwd = vim.fn.expand('%:p:h')
        }
      end
    },
  }
})
