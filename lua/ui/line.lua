local M = {}

local mode_map = {
  ['n'] = 'normal ',
  ['v'] = 'visual ',
  ['V'] = 'v·line ',
  ['i'] = 'insert ',
  ['c'] = 'command '
}

local function mode()
  local m = vim.api.nvim_get_mode().mode
  if mode_map[m] == nil then
    return m
  end
  return mode_map[m]
end

vim.api.nvim_exec(
  [[
  hi PrimaryBlock guifg=00 guibg=00
  hi SecondaryBlock   guifg=00 guibg=00
  hi Blanks   guifg=08 guibg=00
  hi MyColor guifg=#555555 guibg=00
]], false
)

function split(str, reps)
  local t = {}
  string.gsub(str, '[^' .. reps .. ']+', function (w)
    table.insert(t, w)
  end)
  return t
end

function M.statusline()
  local stl = {
    '%#PrimaryBlock#', vim.api.nvim_get_mode().mode, '%#PrimaryBlock#', ' %f', '%#Blanks#', '%m',
    '%#SecondaryBlock#', '%=', '%#LineNr#', '%l,%c ', '%#PrimaryBlock#', '%{&filetype}'
  }

  local mode = vim.api.nvim_get_mode().mode
  if mode == 'i' then
    stl[1] = '%#LineNr#'
  elseif mode == 'v' then
    stl[1] = '%#CursorLineNr#'
  end

  -- local t = split(vim.api.nvim_buf_get_name(0), '/')
  -- local filename = t[#t]
  -- t = split(vim.api.nvim_buf_get_name(0), '.')
  -- local filetype = t[#t]

  -- stl[4] = filename
  -- stl[1] = filetype

  return table.concat(stl)
end

return M
