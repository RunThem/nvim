local M = {}

-- TODO:
-- FIX:
-- HACK:
-- WARN:
-- PERF:
-- NOTE:

function M.setup()
  local todo = require('todo-comments')

  todo.setup {
    signs = true, -- show icons in the signs column
    keywords = {
      FIX = { icon = ' ', color = 'error', alt = { 'FIXME', 'BUG', 'FIXIT', 'FIX', 'ISSUE' } },
      TODO = { icon = ' ', color = 'info' },
      HACK = { icon = ' ', color = 'warning' },
      WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
      PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
      NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } }
    },
    highlight = {
      before = 'fg',
      keyword = 'fg',
      after = 'fg',
      pattern = [[.*<(KEYWORDS)\s*:]],
      comments_only = false
    },
    colors = {
      error = { 'LspDiagnosticsDefaultError', 'ErrorMsg', '#DC2626' },
      warning = { 'LspDiagnosticsDefaultWarning', 'WarningMsg', '#FBBF24' },
      info = { 'LspDiagnosticsDefaultInformation', '#0DB0D7' },
      hint = { 'LspDiagnosticsDefaultHint', '#10B981' },
      default = { 'Identifier', '#7C3AED' }
    },
    search = {
      command = 'fzf',
      args = { '--color=never', '--no-heading', '--with-filename', '--line-number', '--column' },
      -- regex that will be used to match keywords.
      -- don't replace the (KEYWORDS) placeholder
      pattern = [[\b(KEYWORDS):]] -- ripgrep regex
    }
  }
end

return M
