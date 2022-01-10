local lsp = require('lspconfig')
local config = require('lang')

lsp.gopls.setup {
  cmd = {
    'gopls',
  },
  on_attach = config.on_attach,
  capabilities = config.capabilities,
}

require('formatter').setup(
{
  filetype = {
        go = {
          function()
            return {
              exe = 'gofmt',
              args = {
                '-i', vim.api.nvim_buf_get_name(0)
              },
              stdin = false,
              cwd = vim.fn.expand('%:p:h')
            }
          end
        },

  }
}
)
