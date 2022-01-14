local M = {}

function M.setup()
  require('nnn').setup({
    picker = {
      style = {
        width = 30,
        height = 40,
        xoffset = 10,
        yoffset = 5,
        border = 'rounded'
      }
    },
    replace_netrw = 'picker'
  })
end

return M
