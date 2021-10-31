local M = {}

M.lsp_config = require('plugin.config.nvim-lspconfig')
M.cmp_config = require('plugin.config.nvim-cmp')

M.path = vim.fn.getenv('HOME') .. '/.local/share/nvim/lsp_servers/'

return M

