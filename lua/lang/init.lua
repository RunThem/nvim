local M = {}

local utils = require('utils')

M.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                               .make_client_capabilities())

M.on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  utils.run('autocmd ColorScheme * highlight NormalFloat guibg=#1f2335')
  utils.run('autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335')

  -- local border = {
  --   { '🭽', 'FloatBorder' }, { '▔', 'FloatBorder' }, { '🭾', 'FloatBorder' },
  --   { '▕', 'FloatBorder' }, { '🭿', 'FloatBorder' }, { '▁', 'FloatBorder' },
  --   { '🭼', 'FloatBorder' }, { '▏', 'FloatBorder' }
  -- }

  -- vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = border })
  -- vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  --                                                    vim.lsp.handlers.signature_help,
  --                                                    { border = border }
  --                                                  )

  utils.buf_map(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
  utils.buf_map(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
  utils.buf_map(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
  utils.buf_map(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
  utils.buf_map(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
  utils.buf_map(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
  utils.buf_map(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
  utils.buf_map(
    bufnr, 'n', '<leader>wl',
    '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>'
  )
  utils.buf_map(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
  utils.buf_map(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
  utils.buf_map(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
  utils.buf_map(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  utils.buf_map(bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>')
  utils.buf_map(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
  utils.buf_map(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
  utils.buf_map(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
  utils.buf_map(bufnr, 'n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
  utils.buf_map(
    bufnr, 'n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]]
  )

  utils.run('command! Format execute "lua vim.lsp.buf.formatting()"')
end

M.path = vim.fn.getenv('HOME') .. '/.local/share/nvim/lsp_servers/'

return M

