local M = {}

function M.setup()
  require('formatter').setup(
    {
      filetype = {
        c = {
          function()
            return {
              exe = 'clang-format',
              args = {
                '--style="{Language: Cpp, BasedOnStyle: LLVM, AlignConsecutiveAssignments: true, AlignConsecutiveDeclarations: true, AlwaysBreakBeforeMultilineStrings: true, PointerAlignment: Left, IndentWidth: 2}"',
                '-i', vim.api.nvim_buf_get_name(0)
              },
              stdin = false,
              cwd = vim.fn.expand('%:p:h')
            }
          end
        },
        lua = {
          function()
            return {
              exe = 'lua-format',
              args = { '-i', '-c', '~/.config/nvim/lua/lang/lua/fmt' },
              stdin = true
            }
          end
        }
      }
    }
  )
end

return M
