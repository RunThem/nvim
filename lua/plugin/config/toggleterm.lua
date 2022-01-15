local M = {}

function M.setup()
  require('toggleterm').setup({
    open_mapping = '<leader>e',
    hide_numbers = true,
    direction = 'float',
    float_opts = {
      border = 'rounded',
      width = 70,
      height = 20,
      winblend = 3,
      highlights = { border = 'Normal' }
    }
  })
end

return M
