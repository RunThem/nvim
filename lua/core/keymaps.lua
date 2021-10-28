local utils = require('utils')

-- map leader to space
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', ' ', '', { noremap = true})
vim.api.nvim_set_keymap('x', ' ', '', { noremap = true})

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
utils.map('n', '<C-L>', '3w')
utils.map('n', '<C-h>', '3b')
utils.map('n', 'J', 'gj')
utils.map('n', 'K', 'gk')
utils.map('n', 'H', '0')
utils.map('n', 'L', '$')

-- Replace arrow keys in insert mode
utils.map('i', '<C-j>', '<Down>')
utils.map('i', '<C-k>', '<Up>')
utils.map('i', '<C-h>', '<Left>')
utils.map('i', '<C-l>', '<Right>')

-- Jump in the window
utils.map('n', '<leader>h', '<C-w>h')
utils.map('n', '<leader>j', '<C-w>j')
utils.map('n', '<leader>k', '<C-w>k')
utils.map('n', '<leader>l', '<C-w>l')

-- Jump in the buffer
utils.map('n', '<leader>n', ':bn<Cr>')
utils.map('n', '<leader>m', ':bp<Cr>')
utils.map('n', '<leader>d', ':bd<Cr>')

-- Replace visual keys
utils.map('n', 'vv', 'v')

-- clear highlights
utils.map('n', '<leader>f', '<Cmd>noh<Cr>')

-- In C code, go to the end of the line and add ';' symbol
utils.map('i', ';;', '<Esc>A;') 

-- Save and exit
utils.map('n', 'S', ':w<Cr>')
utils.map('n', 'Q', ':q<Cr>')

-- Open the Neovim configuration file
utils.map('n', 'nrc', '<Cmd>e ~/.config/nvim/init.lua<Cr>')

-- ';' to ':'
utils.map('n', ';', ':', { silent = false, nowait = true })

-- Executing external commands
utils.map('n', 'sh', '!;')

-- Resize the window
utils.map('n', '<Up>', '<Cmd>res +1<Cr>')
utils.map('n', '<Down>', '<Cmd>res -1<Cr>')
utils.map('n', '<Right>', '<Cmd>vert res -1<Cr>')
utils.map('n', '<Left>', '<Cmd>vert res +1<Cr>')

-- Place search results in the center of the screen when querying them
utils.map('n', 'n', 'nzz')
utils.map('n', 'N', 'Nzz')

utils.map('n', ' SS', '<Cmd>:w<Cr><Cmd>source ~/.config/nvim/init.lua<Cr>')
