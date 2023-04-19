vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
vim.wo.number = true
vim.wo.relativenumber =flase
-- 高亮所在行
vim.wo.cursorline = true
-- jk移动时光标上下方保留8行
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 2
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 缩进2个空格等于一个tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- 新行对齐当前行，空格替代tab
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = false
-- 边输入边搜搜
vim.o.incsearch = true
-- 使用增强状态栏后不需要vim的模式提示
vim.o.showmode = false
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 1
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- split window从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全补自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 补全增强
vim.o.wildmenu = true
-- always show tabline
vim.o.showtabline = 2
vim.o.showmatch = true

