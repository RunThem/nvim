local utils = require('utils')

-- map leader to space
vim.g.mapleader = ' '
utils.map('n', ' ', '')
utils.map('x', ' ', '')

-- options = {
--   noremap = true,
--   silent = true,
--   expr = false,
--   nowait = true,
-- }

-- utils.cap('n', '<C-l>', '<cmd>noh<CR>') -- clear highlights
-- Jump line or word
utils.map('n', '<C-j>', '5j')
utils.map('n', '<C-k>', '5k')
utils.map('n', '<C-l>', '3w')
utils.map('n', '<C-h>', '3b')
-- utils.map('n', 'j', 'v:count == 0 ? "gj" : "j"', { expr = true })
-- utils.map('n', 'k', 'v:count == 0 ? "gk" : "k"', { expr = true })
utils.map('n', 'H', '0')
utils.map('n', 'L', '$')
utils.map('n', 'J', '')
utils.map('n', 'K', '')

utils.map('v', 'H', '0')
utils.map('v', 'L', '$')

-- Replace arrow keys in insert mode
utils.map('i', '<C-j>', '<Down>')
utils.map('i', '<C-k>', '<Up>')
utils.map('i', '<C-h>', '<Left>')
utils.map('i', '<C-l>', '<Right>')

-- Jump in the window
utils.map('n', '<leader>h', '<C-w>h', { nowait = true })
utils.map('n', '<leader>j', '<C-w>j', { nowait = true })
utils.map('n', '<leader>k', '<C-w>k', { nowait = true })
utils.map('n', '<leader>l', '<C-w>l', { nowait = true })

-- Jump in the buffer
utils.map('n', '<leader>n', ':bn<Cr>')
utils.map('n', '<leader>p', ':bp<Cr>')
utils.map('n', '<leader>d', ':bd<Cr>')

-- clear highlights
utils.map('n', '<leader>f', '<Cmd>noh<Cr>')

-- format source file
utils.map('n', '<leader>F', ':FormatWrite<Cr>')

-- In C code, go to the end of the line and add ';' symbol
utils.map('i', ';;', '<Esc>A;')

utils.map('i', '.*', '/*  */<Esc>hhi')

-- Save and exit
utils.map('n', 'S', ':w<Cr>')
utils.map('n', 'Q', ':q<Cr>')

-- ';' to ':'
utils.map('n', ';', ':', { silent = false, nowait = true })

-- Executing external commands
utils.map('n', 'sh', ':!')

-- Resize the window
utils.map('n', '<Up>', '<Cmd>res -1<Cr>')
utils.map('n', '<Down>', '<Cmd>res +1<Cr>')
utils.map('n', '<Right>', '<Cmd>vert res +1<Cr>')
utils.map('n', '<Left>', '<Cmd>vert res -1<Cr>')

-- nnn file manger
utils.map('n', '<leader>r', ':NnnPicker<Cr>')

-- split window
utils.map('n', '<leader>\\', ':vsplit<Cr>')
utils.map('n', '<leader>|', ':split<Cr>')
