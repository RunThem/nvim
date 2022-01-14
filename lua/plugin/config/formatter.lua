local M = {}

function M.setup()
  local config = function(exe, args, stdin)
    return {
      function()
        return { exe = exe, args = args, stdin = stdin }
      end
    }
  end

  require('formatter').setup({
    filetype = {
      -- c = {
      --   function()
      --     return { exe = 'clang-format', args = { '-i' }, stdin = false }
      --   end
      -- },
      c = config('clang-format', { '-i' }, false),
      cpp = config('clang-format', { '-i' }, false),
      sh = config('shfmt', { '-i' }, false),
      go = config('gofmt', { '-w' }, false),
      rust = config('rustfmt', {}, true),
      lua = config('lua-format',
                   { '-i', '-c', '~/.config/nvim/lua/lang/lua/style.toml' },
                   true)
    }
  })
end

return M
