local utils = require('utils')
local fn = vim.fn

vim.g.python_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/local/bin/python3'

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  utils.run('echo "Install Plugin Manager!"')
  fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
  utils.run('packadd packer.nvim')
end

require('core.settings')
require('core.keymaps')

require('packer').startup({
  function(use)
    use 'wbthomason/packer.nvim'
  end,
  config = {
    max_jobs = 16,
    git = {
      default_url_format = 'https://hub.fastgit.org/%s'
    },
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single'})
      end
    }
  }
})
