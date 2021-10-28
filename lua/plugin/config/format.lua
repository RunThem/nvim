local M = {  }

function M.setup()
  require('format').setup({
    lua = {
      {
        cmd = {
          function (file)
            return string.format('lua-format %s -i -c %s', file, '~/.config/nvim/lua/lang/lua/fmt')
          end
        }
      }
    }
  })
end


return M
