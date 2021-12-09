local packer = require('packer')
local utils = require('utils')

utils.run('packadd packer.nvim')

-- Load the plug-in configuration
function load(plug, config)
  local package_ok, _ = pcall(require, plug)
  if not package_ok then
    return function()
	    utils.info(plug .. "error")
    end
  end
  return require('plugin.config.' .. config).setup()
end

packer.init({
  max_jobs = 16,
  git = { default_url_format = 'https://hub.fastgit.org/%s' },
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end,
   },
 })

packer.startup(
  {
    function(use)
      -- 包管理
      use({ 'wbthomason/packer.nvim' })
      -- 依赖
      use({ 'kyazdani42/nvim-web-devicons' })
      use({ 'nvim-lua/popup.nvim' })
      use({ 'nvim-lua/plenary.nvim' })

      -- 配色
      use({ 'glepnir/zephyr-nvim' })
      use({ 'tanvirtin/monokai.nvim' })
      -- 语法高亮
      use(
        {
          'nvim-treesitter/nvim-treesitter',
          run = ':TSUpdate',
          config = load('nvim-treesitter', 'nvim-treesitter')
        }
      )

      -- 智能括号
      use({ 'windwp/nvim-autopairs', config = load('nvim-autopairs', 'nvim-autopairs') })

      -- 文件树
      use({ 'kyazdani42/nvim-tree.lua', config = load('nvim-tree', 'nvim-tree') })

      -- 注释
      use({ 'b3nj5m1n/kommentary', config = load('kommentary', 'kommentary') })

      -- Todo清单
      use({ 'folke/todo-comments.nvim', config = load('todo-comments', 'todo-comments') })

      -- 格式化
      use({ 'mhartington/formatter.nvim', config = load('formatter', 'formatter') })

      -- LSP
      use({ 'neovim/nvim-lspconfig' }) -- Collection of configurations for built-in LSP client
      use(
        {
          'hrsh7th/nvim-cmp',
          requires = {
            'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua', 'hrsh7th/cmp-calc', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip'
          },
          config = load('cmp', 'nvim-cmp')
        }
      ) -- Autocompletion plugin

      -- use(
      --   {
      --     'williamboman/nvim-lsp-installer',
      --     config = load('nvim-lsp-installer', 'nvim-lsp-installer')
      --   }
      -- )

      -- 模糊搜索
      -- use({ 'nvim-telescope/telescope.nvim', load('telescope', 'telescope') })
      -- use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
      -- use({ 'kevinhwang91/nvim-hlslens' })

      -- git提示
      -- use 'lewis6991/gitsigns.nvim'

      -- 智能对齐
      -- use 'junegunn/vim-easy-align'
    end
  }
)

packer.install()
