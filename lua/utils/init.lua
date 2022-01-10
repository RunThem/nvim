local M = {}

function M.opt(key, value)
  if value == true or value == false then
    vim.cmd("set " .. key)
  else
    vim.cmd("set " .. key .. "=" .. value)
  end
end

function M.map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }

  if opts ~= nil then options = vim.tbl_extend('force', options, opts) end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.buf_map(buf, mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }

  if opts ~= nil then options = vim.tbl_extend('force', options, opts) end

  vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, options)
end

function M.run(cmd)
  vim.cmd(cmd)
end

function M.cmd(autocmds, name)
  vim.cmd('augroup ' .. name)
  vim.cmd('autocmd!')
  for _, autocmd in ipairs(autocmds) do
    vim.cmd('autocmd ' .. table.concat(autocmd, ' '))
  end
  vim.cmd('augroup END')
end

function M.split(str, reps)
  local t = {}
  string.gsub(str, '[^' .. reps .. ']+', function(w)
    table.insert(t, w)
  end)
  return t
end

function M.info(msg)
  local txt = string.format('MyNvim: %s', msg)
  vim.notify(txt, vim.log.levels.INFO, { title = 'MyNvim' })
end

return M
