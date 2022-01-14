local M = {}

function M.setup()
  -- local utils = require('utils')

  local kommentary = require('kommentary.config')

  kommentary.use_extended_mappings()
  kommentary.configure_language('default', { prefer_multi_line_comments = true })

  -- 以下设置无效
  -- utils.map('n', ' cc', '<Plug>kommentary_line_increase')
  -- utils.map('n', '<leader>ci', '<Plug>kommentary_motion_increase')
  -- utils.map('x', ' cc', '<Plug>kommentary_visual_increase')
  -- utils.map('n', ' cu', '<Plug>kommentary_line_decrease')
  -- utils.map('n', '<leader>cd', '<Plug>kommentary_motion_decrease')
  -- utils.map('x', ' cu', '<Plug>kommentary_visual_decrease')
end

return M
