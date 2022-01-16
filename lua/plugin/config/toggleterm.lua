local M = {}

function M.setup()
  require('toggleterm').setup({
    open_mapping = '<C-\\>',
    hide_numbers = true,
    direction = 'float',
    shading_factor = 2,
    float_opts = {
      border = 'rounded',
      width = 70,
      height = 20,
      --[[ winblend = 2, ]]
      highlights = { border = 'VertSplit' }
    }
  })
end

return M
