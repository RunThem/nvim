local M = {}

function M.setup()
  require('formatter').setup({
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
      },
      go = {
        function()
          return {
            exe = 'gofmt',
            args = { '-w', vim.api.nvim_buf_get_name(0) },
            stdin = false,
            cwd = vim.fn.expand('%:p:h')
          }
        end
      },
      rust = {
        function()
          return {
            exe = 'rustfmt',
            args = { vim.api.nvim_buf_get_name(0) },
            stdin = true
          }
        end
      },
      sh = {
        function()
          return {
            exe = 'shfmt',
            args = { '-i', vim.api.nvim_buf_get_name(0) },
            stdin = false,
            cwd = vim.fn.expand('%:p:h')
          }
        end
      },

      lua = {
        function()
          return {
            exe = 'lua-format',
            args = { '-i', '-c', '~/.config/nvim/lua/lang/lua/style.toml' },
            stdin = true
          }
        end
      }
    }
  })
end

return M
