local utils = require('utils')
local fn = vim.fn

vim.g.python_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/local/bin/python3'
vim.g.kommentary_create_default_mappings = false

require('core.settings')
require('core.keymaps')

local packer_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(packer_path)) > 0 then
  utils.info('Install Plugin Manager!')
  fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    packer_path
  })
end

local packer_ok, _ = pcall(require, 'packer')
if not packer_ok then
  return
else
  utils.run('packadd packer.nvim')
end
