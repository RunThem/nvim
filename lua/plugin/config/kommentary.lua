local M = {}

function M.setup()
  vim.g.kommentary_create_default_mappings = false

  local kommentary = require('kommentary.config')

  kommentary.use_extended_mappings()
  kommentary.configure_language('default',
    { prefer_single_line_comments = true })

end

return M
-- 以下设置无效
-- utils.map('n', ' cc', '<Plug>kommentary_line_increase')
-- utils.map('n', '<leader>ci', '<Plug>kommentary_motion_increase')
-- utils.map('x', ' cc', '<Plug>kommentary_visual_increase')
-- utils.map('n', ' cu', '<Plug>kommentary_line_decrease')
-- utils.map('n', '<leader>cd', '<Plug>kommentary_motion_decrease')
-- utils.map('x', ' cu', '<Plug>kommentary_visual_decrease')
