local M = {}

function M.setup()
  local snip = require('luasnip')
  local cmp = require('cmp')

  local has_words_before = function ()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

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
      -- ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif snip.expand_or_jumpable() then
          snip.expand_or_jump()
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
       }),
     },
    sources = { { name = 'nvim_lsp' },
                { name = 'luasnip', options = { use_show_condition = false } } },
    completion = { completeopt = 'menu,menuone,noinsert' },
   })
end

return M
