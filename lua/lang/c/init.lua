local lsp = require('lspconfig')
local config = require('lang')
local fmt = require('formatter')

lsp.clangd.setup({
  cmd = {
    config.path .. 'clangd/clangd', '--background-index',
    '--suggest-missing-includes', '--clang-tidy', '--header-insertion=iwyu'
  },
  on_attach = config.on_attach,
  capabilities = config.capabilities
})

fmt.setup({
  filetype = {
    c = {
      function()
        return {
          exe = 'clang-format',
          args = { '-i', vim.api.nvim_buf_get_name(0) },
          stdin = false,
          cwd = vim.fn.expand('%:p:h')
        }
      end
    },
    cpp = {
      function()
        return {
          exe = 'clang-format',
          args = { '-i', vim.api.nvim_buf_get_name(0) },
          stdin = false,
          cwd = vim.fn.expand('%:p:h')
        }
      end
    }
  }
})

-- lsp.ccls.setup({
--   on_attach = config.on_attach,
--   capabilities = config.capabilities,
-- })

