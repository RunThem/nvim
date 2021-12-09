local utils = require('utils')

utils.run('syntax on')
utils.run('syntax enable')
utils.run('filetype plugin indent on')

utils.opt('autoindent', true)                   -- C语言格式缩进
utils.opt('mouse', 'a')                         -- 开启鼠标功能
utils.opt('shortmess', 'sI')
utils.opt('hidden', true)                       -- 隐藏buffer
utils.opt('ignorecase', true)                   -- 搜索时忽略大小写
utils.opt('incsearch', true)                    -- 查找输入时动态增量显示查找结果
utils.opt('scrolloff', 7 )                      -- 上下各留出空行
utils.opt('shiftround', true)                   -- <>缩进为整数倍
utils.opt('smartcase', true)                    -- 除搜索内容包含大写字母时其他都是忽略大小写
utils.opt('wildmode', 'list:longest')           -- Tab键显示菜单
utils.opt('relativenumber', true)               -- 相对行号
utils.opt('clipboard','unnamed,unnamedplus')    -- 使用系统剪切板
utils.opt('matchtime', 1)                       -- 显示括号匹配的时间
utils.opt('showmatch', true)                    -- 显示匹配的括号
utils.opt('nocompatible', true)                 -- 不用兼容vim/vi
utils.opt('encoding', 'utf-8')                  -- 内部工作编码
utils.opt('helplang', 'cn')                     -- 设置帮着文档为中文(需下载中文帮助文档)
utils.opt('wrap', true)                         -- 自动换行(nowrap禁止自动换行)
utils.opt('wildmenu', true)                     -- 允许下方显示目录
utils.opt('hlsearch', true)                     -- 高亮搜索内容
utils.opt('noshowmode', true)                   -- 不用显示当前处于什么模式
utils.opt('ttimeout', true)                     -- 功能键超时检测
utils.opt('ttimeoutlen', 50)                    -- 功能键超时50毫秒
utils.opt('ruler', true)                        -- 显示光标位置
utils.opt('fileencoding', 'utf-8')              -- 文件默认编码
utils.opt('display', 'lastline')                -- 显示最后一行
utils.opt('lazyredraw', true)                   -- 延迟绘制, 提升性能
utils.opt('ffs', 'unix,mac,dos')                -- 文件换行符, 默认使用Unix换行符
utils.opt('nobackup', true)                     -- 不允许备份文件
utils.opt('nowritebackup', true)                -- 不允许保存时备份
utils.opt('noswapfile', true)                   -- 禁用交换文件
utils.opt('noundofile', true)                   -- 禁用undo文件
utils.opt('completeopt', 'menuone,noselect')    -- compe
utils.opt('synmaxcol', 240)                     -- 高亮的最大行数

-- Set the cursor style
utils.run('set guicursor=a:ver50-ncvCursor')

-- Remove whitespace on save
utils.run('au BufWritePre * :%s/\\s\\+$//e')

-- Highlight on yank
utils.run('au TextYankPost * lua vim.highlight.on_yank {on_visual = false}')

-- Edit the Makefile using indentatin
utils.run('au FileType make :set expandtab!')

-- Open the file timemark and jump to where it was last exited
utils.run([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])

-- Edit mode uses absolute line numbers, and normal mode uses relative line numbers
utils.cmd({{ 'InsertEnter', '*', ':set', 'norelativenumber' },
           {'InsertLeave', '*', ':set', 'relativenumber' }},
           'relative_numbser')
