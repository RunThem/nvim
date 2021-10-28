local utils = require('utils')
local packer = require('packer')

packer.startup({function(use)
  -- 包管理
  use 'wbthomason/packer.nvim'
  -- 依赖
  use { 'kyazdani42/nvim-web-devicons', opt = true }
  use { 'nvim-lua/popup.nvim', opt = true }
  use { 'nvim-lua/plenary.nvim', opt = true }

  -- 配色
  use {'glepnir/zephyr-nvim'}
  -- 语法高亮
  use {'nvim-treesitter/nvim-treesitter', opt = true }

  -- 智能括号
  use { 'windwp/nvim-autopairs', opt = true }

  -- 文件树
  use { 'kyazdani42/nvim-tree.lua', opt = true, }

  -- 注释
  use { 'b3nj5m1n/kommentary', opt = true }

  -- 快速移动
  -- use 'ggandor/lightspeed.nvim'

  -- Todo清单
  use { 'folke/todo-comments.nvim', opt = true }


  -- LSP
  use { 'williamboman/nvim-lsp-installer', opt = true }
  use { 'neovim/nvim-lspconfig', opt = true } -- Collection of configurations for built-in LSP client
  use { 'hrsh7th/nvim-cmp', opt = true } -- Autocompletion plugin
  use { 'hrsh7th/cmp-nvim-lsp', opt = true } -- LSP source for nvim-cmp
  use { 'saadparwaiz1/cmp_luasnip', opt = true } -- Snippets source for nvim-cmp
  use { 'L3MON4D3/LuaSnip', opt = true } -- Snippets plugin

  -- use 'folke/lsp-colors.nvim'
  -- use 'HungryJoe/trouble.nvim'
  -- use 'hrsh7th/vim-vsnip'
  -- use 'hrsh7th/nvim-compe'
  -- use 'onsails/lspkind-nvim'
  -- symbols
  -- Terminal
  -- use "akinsho/nvim-toggleterm.lua"
  -- 缩进线
  -- use 'lukas-reineke/indent-blankline.nvim'


  -- 模糊搜索
  -- use 'nvim-telescope/telescope.nvim'
  -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- use 'kevinhwang91/nvim-hlslens'


  -- git提示
  -- use 'lewis6991/gitsigns.nvim'


  -- 智能注释
  -- 智能对齐
  -- use 'junegunn/vim-easy-align'

end
})

-- utils.run('echo "Plug-in Install..."')
-- utils.run('PackerInstall')

require('plugin.config.nvim-autopairs')
require('plugin.config.nvim-treesitter')
require('plugin.config.nvim-tree')
require('plugin.config.kommentary')
require('plugin.config.todo-comments')
require('plugin.config.nvim-lsp-installer')
require('plugin.config.nvim-lspconfig')
require('plugin.config.nvim-cmp')
