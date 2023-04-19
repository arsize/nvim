vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true,silent = true}

-- 之后可以这样映射按键
map("i","jj","<ESC> :w! <CR>",opt)
-- 分屏
map("n","sv",":vsp<CR>",opt) -- 水平
map("n","sh",":sp<CR>",opt) --垂直
map("n","sc","<C-w>c",opt) --关闭当前
map("n","so","<C-w>o",opt) --关闭其他

-- tree
map("n","tt",":NvimTreeToggle<CR>",opt)
map("n","ff","gg=G",opt)
map("n","qq",":wq <CR>",opt)







