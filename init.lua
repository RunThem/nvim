--[[

  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

Neovim init file
Version: 0.3.0 - 2022/01/14
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
require('lang.rust')
require('lang.shell')
require('lang.golang')
