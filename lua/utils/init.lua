local utils = {}

function utils.opt(key, value)
  if value == true or value == false then
    vim.cmd("set " .. key)
  else
    vim.cmd("set " .. key .. "=" .. value)
  end
end


function utils.map(mode, lhs, rhs, opts)
  local options = {
    noremap = true,
    silent = true,
  }

  if opts ~= nil then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function utils.buf_map(buf, mode, lhs, rhs, opts)
  local options = {
    noremap = true,
    silent = true,
  }

  if opts ~= nil then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_buf_set_keymap(buf, mode,lhs, rhs, options)
end

function utils.run(cmd)
  vim.cmd(cmd)
end

return utils
