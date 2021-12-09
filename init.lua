--[[

  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

Neovim init file
Version: 0.1.1 - 2021/11/23
Maintainer: RunThem
Website: https://github.com/RunThem/nvim.git

--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------

-- init
require('core')

-- plugins
require('plugin')

-- colorscheme
require('zephyr')

-- ui
require('ui')

-- lsp
require('lang')
require('lang.c')
require('lang.lua')
