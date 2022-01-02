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
  on_attach = config.on_attach,
  capabilities = config.capabilities,
}

require('formatter').setup(
{
  filetype = {
        c = {
          function()
            return {
              exe = 'clang-format',
              args = {
                -- '--style="{Language: Cpp, BasedOnStyle: LLVM, AlignConsecutiveAssignments: true, AlignConsecutiveDeclarations: true, AllowShortFunctionsOnASingleLine: Empty, AlwaysBreakBeforeMultilineStrings: true, PointerAlignment: Left, IndentWidth: 2}"',
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


-- lsp.ccls.setup({
--   on_attach = config.on_attach,
--   capabilities = config.capabilities,
-- })

