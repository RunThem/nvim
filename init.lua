--[[

  ¨€¨€¨€¨[   ¨€¨€¨[¨€¨€¨€¨€¨€¨€¨€¨[ ¨€¨€¨€¨€¨€¨€¨[ ¨€¨€¨[   ¨€¨€¨[¨€¨€¨[¨€¨€¨€¨[   ¨€¨€¨€¨[
  ¨€¨€¨€¨€¨[  ¨€¨€¨U¨€¨€¨X¨T¨T¨T¨T¨a¨€¨€¨X¨T¨T¨T¨€¨€¨[¨€¨€¨U   ¨€¨€¨U¨€¨€¨U¨€¨€¨€¨€¨[ ¨€¨€¨€¨€¨U
  ¨€¨€¨X¨€¨€¨[ ¨€¨€¨U¨€¨€¨€¨€¨€¨[  ¨€¨€¨U   ¨€¨€¨U¨€¨€¨U   ¨€¨€¨U¨€¨€¨U¨€¨€¨X¨€¨€¨€¨€¨X¨€¨€¨U
  ¨€¨€¨U¨^¨€¨€¨[¨€¨€¨U¨€¨€¨X¨T¨T¨a  ¨€¨€¨U   ¨€¨€¨U¨^¨€¨€¨[ ¨€¨€¨X¨a¨€¨€¨U¨€¨€¨U¨^¨€¨€¨X¨a¨€¨€¨U
  ¨€¨€¨U ¨^¨€¨€¨€¨€¨U¨€¨€¨€¨€¨€¨€¨€¨[¨^¨€¨€¨€¨€¨€¨€¨X¨a ¨^¨€¨€¨€¨€¨X¨a ¨€¨€¨U¨€¨€¨U ¨^¨T¨a ¨€¨€¨U
  ¨^¨T¨a  ¨^¨T¨T¨T¨a¨^¨T¨T¨T¨T¨T¨T¨a ¨^¨T¨T¨T¨T¨T¨a   ¨^¨T¨T¨T¨a  ¨^¨T¨a¨^¨T¨a     ¨^¨T¨a


Neovim init file
Version: 0.1.1 - 2021/11/23
Maintainer: RunThem
Website: https://github.com/RunThem/nvim.git

--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------

-- initialization
require('core')

-- plugins
require('plugin')

-- ui
require('ui')

-- lsp
require('lang')
require('lang.c')
require('lang.lua')
