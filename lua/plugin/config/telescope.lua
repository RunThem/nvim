local M = {}

function M.setup()
  local utils = require('utils')
  local telescope = require('telescope')

  telescope.setup({
    defaults = {
      vimgrep_arguments = {
        'rg', '--color=never', '--no-heading', '--with-filename',
        '--line-number', '--column', '--ignore-case'
      },
      -- path_display = { 'smart' },
      prompt_prefix = ' ',
      selection_caret = ' ',
      mappings = {
        i = {
          ["<C-Down>"] = require('telescope.actions').cycle_history_next,
          ["<C-Up>"] = require('telescope.actions').cycle_history_prev
        }
      }
    },
    extensions = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = 'ignore_case' -- or "ignore_case" or "respect_case"
      }
    }
  })

  telescope.load_extension('fzf')

  -- 全局查找文件
  utils.map('n', '<leader>ff',
            "<cmd>lua require('telescope.builtin').find_files()<cr>")
  -- 全局查找字符串
  utils.map('n', '<leader>fg',
            "<cmd>lua require('telescope.builtin').live_grep()<cr>")
  -- 全局查找指定字符串
  utils.map('n', '<leader>fa',
            "<cmd>lua require('telescope.builtin').grep_string()<cr>")
  -- 全局查找缓冲区
  utils.map('n', '<leader>fb',
            "<cmd>lua require('telescope.builtin').buffers()<cr>")
  -- 全局查找命令
  utils.map('n', '<leader>fc',
            "<cmd>lua require('telescope.builtin').commands()<cr>")

end

return M
