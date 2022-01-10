local M = {}

function M.setup()
  local utils = require('utils')
  local tree = require('nvim-tree')

  vim.g.nvim_tree_icons = {
    git = {
      unstaged = '',
      staged = '✓',
      unmerged = '',
      renamed = '➜',
      untracked = '★',
      deleted = ''
    }
  }

  tree.setup({
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {},
    auto_close = false,
    open_on_tab = false,
    update_to_buf_dir = { enable = true, auto_open = true },
    hijack_cursor = false,
    update_cwd = true,
    view = { width = 30, side = 'right', auto_resize = true }
  })

  utils.map('n', '<leader>e', '<Cmd>NvimTreeToggle<cr>')
  -- 在文件树中定位当前文件
  utils.map('n', '<leader>r', '<Cmd>NvimTreeFindFile<cr>')
end

return M
