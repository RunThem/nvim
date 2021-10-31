local M = {}

M.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol
                                                               .make_client_capabilities())

function M.setup()
  vim.o.completeopt = 'menuone,noselect'

  local snip = require('luasnip')
  local cmp = require('cmp')

  cmp.setup({
    experimental = { ghost_text = false, custom_menu = true },
    documentation = {
      border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
     },
    snippet = {
      expand = function(args)
        snip.lsp_expand(args.body)
      end,
     },
    mapping = {
      ['<Tab>'] = cmp.mapping.select_prev_item(),
      ['<S-Tab>'] = cmp.mapping.select_next_item(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
       }),
     },
    sources = { { name = 'nvim_lsp' },
                { name = 'luasnip', opts = { use_show_condition = false } } },
    completion = { completeopt = 'menu,menuone,noinsert' },
   })
end

return M
