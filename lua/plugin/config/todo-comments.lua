local todo = require('todo-comments')

-- TODO: sdf
-- FIX: fdw
-- XXX:
-- PERF:
-- sdf:
-- WARN:
todo.setup{
    signs = true, -- show icons in the signs column
    -- keywords recognized as todo comments
    keywords = {
        FIX  = { icon = ' ', color = 'error', alt = { 'FIXME', 'BUG', 'FIXIT', 'FIX', 'ISSUE' } },
        TODO = { icon = ' ', color = 'info' },
        HACK = { icon = ' ', color = 'warning' },
        WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
        PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
        NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
    },
    highlight = {
        before = '',
        keyword = 'wide',
        after = 'bg',
        pattern = [[.*<(KEYWORDS)\s*:]],
        comments_only = true,
    },
    colors = {
        error = { 'LspDiagnosticsDefaultError', 'ErrorMsg', '#DC2626' },
        warning = { 'LspDiagnosticsDefaultWarning', 'WarningMsg', '#FBBF24' },
        info = { 'LspDiagnosticsDefaultInformation', '#2563EB' },
        hint = { 'LspDiagnosticsDefaultHint', '#10B981' },
        default = { 'Identifier', '#7C3AED' },
    },
    search = {
        command = 'rg',
        args = {
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
        },
        -- regex that will be used to match keywords.
        -- don't replace the (KEYWORDS) placeholder
        pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    },
}
