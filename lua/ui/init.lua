local utils = require('utils')

require('zephyr')

local indent = 2

utils.opt('number', true)                 -- 设置行号
utils.opt('expandtab', true)              -- 展开Tab符
utils.opt('shiftwidth', indent)           -- 设置缩进宽度
utils.opt('tabstop', indent)              -- 设置Tab宽度
utils.opt('softtabstop', indent)          -- 如果设置了'expandtab', 那么展开Tab为多少字符
utils.opt('laststatus', 2)                -- 总是显示状态栏
utils.opt('signcolumn', 'number')         -- 总是显示侧边栏(git状态, 诊断消息)
utils.opt('showtabline', 0)               -- 不显示标签栏
-- utils.opt('list', true)                   -- 设置显示制表符等隐藏字符
utils.opt('showcmd', true)                -- 显示命令
utils.opt('splitright', true)             -- 水平切割窗口时, 默认在右边显示新窗口
utils.opt('splitbelow', true)             -- 竖直切割窗口时, 默认在下边显示新窗口
utils.opt('cursorline', true)             -- 高亮当前行
-- utils.opt('background', 'dark')           -- 设置黑色背景, 与主题有冲突, 取消即可
utils.opt('termguicolors', true)          -- 使用256色终端

utils.run('highlight Normal guibg=NONE guifg=NONE')
utils.run('highlight LineNr guibg=NONE guifg=#61afaf')
utils.run('highlight CursorLineNr guibg=NONE guifg=#e95678')
utils.run('highlight SignColumn guibg=NONE')

-- utils.run('echo ' .. vim.api.nvim_buf_get_name())
vim.o.statusline = '%!luaeval("require(\'ui.line\').statusline()")'
