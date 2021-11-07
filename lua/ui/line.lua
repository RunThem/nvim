local M = {}

function M.statusline()
  local stl = {
    '%##', vim.api.nvim_get_mode().mode, '%##', ' %t', ' %m', '%=', '%#LineNr#', '%r', ' %l,%c ',
    '%##', '%{&filetype}'
  }

  if stl[2] == 'i' then
    stl[1] = '%#LineNr#'
  elseif stl[2] == 'v' then
    stl[1] = '%#CursorLineNr#'
  elseif stl[2] == 'c' then
    stl[1] = ''
  end

  return table.concat(stl)
end

return M
