local M = {}

function M.setup()
local nTree = require('nvim-treesitter.configs')

nTree.setup({
  ensure_installed = {
    'c',
    'cpp',
    'go',
    'rust',
    'gomod',
    'lua',
    'bash',
    'yaml',
    'json',
    'toml'
  },
  highlight = {
    enable = true,
  },
})
end

return M
