local packer = require('packer')

-- :
function load(plug, config)
  local package_ok, _ = pcall(require, plug)
  if not package_ok then
    return function()

    end
  end
  return require('plugin.config.' .. config).setup()
end

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

      -- 状态栏
      -- use({ 'nvim-lualine/lualine.nvim', config = load('lualine', 'lualine') })

      -- 快速移动
      -- use 'ggandor/lightspeed.nvim'

      -- Todo清单
      use({ 'folke/todo-comments.nvim', config = load('todo-comments', 'todo-comments') })

      -- 格式化
      use({ 'lukas-reineke/format.nvim', config = load('format', 'format') })

      -- LSP
      use({ 'neovim/nvim-lspconfig' }) -- Collection of configurations for built-in LSP client
      use(
        {
          'williamboman/nvim-lsp-installer',
          config = load('nvim-lsp-installer', 'nvim-lsp-installer')
        }
      )
      use({ 'L3MON4D3/LuaSnip' }) -- Snippets plugin
      use(
        {
          'hrsh7th/nvim-cmp',
          requires = {
            'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua', 'hrsh7th/cmp-calc', 'LuaSnip'
          },
          config = load('cmp', 'nvim-cmp')
        }
      ) -- Autocompletion plugin

      use({ 'saadparwaiz1/cmp_luasnip' }) -- Snippets source for nvim-cmp

      -- use 'HungryJoe/trouble.nvim'
      -- use 'onsails/lspkind-nvim'
      -- symbols
      -- Terminal
      -- use 'akinsho/nvim-toggleterm.lua'
      -- 缩进线
      -- use 'lukas-reineke/indent-blankline.nvim'

      -- 模糊搜索
      use({ 'nvim-telescope/telescope.nvim', load('telescope', 'telescope') })
      use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
      use({ 'kevinhwang91/nvim-hlslens' })

      -- git提示
      -- use 'lewis6991/gitsigns.nvim'

      -- 智能对齐
      -- use 'junegunn/vim-easy-align'
    end
  }
)

packer.install()
