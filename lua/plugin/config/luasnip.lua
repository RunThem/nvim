local M = {}

function M.setup()
  local luasnip = require('luasnip')

  require('luasnip.loaders.from_vscode').load()
  luasnip.config.set_config({ history = true })
  luasnip.config.setup({})
end

return M
