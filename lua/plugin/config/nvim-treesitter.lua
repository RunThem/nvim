local M = {}

function M.setup()
  require('nvim-treesitter.configs').setup({
    ensure_installed = { 'c', 'cpp', 'go', 'rust', 'gomod', 'lua', 'bash',
                         'yaml', 'json', 'toml' },
    highlight = { enable = true },
   })
end

return M
