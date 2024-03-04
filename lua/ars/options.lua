if vim.fn.has("nvim-0.9") == 1 then
	vim.opt.diffopt:append("linematch:60")
end

local options = {
	opt = {
		breakindent = true, -- 智能地保持换行后的行与原始行的缩进相同
		clipboard = "unnamedplus", -- 将系统剪贴板与Vim的寄存器进行同步
		cmdheight = 0, -- 命令行将不会显示在屏幕上
		cursorline = false, -- 高亮当前行
		mouse = "a", -- 启用鼠标支持
		number = true, -- 启用行号
		relativenumber = false, -- 相对行号
		expandtab = true, -- enable the use of space in tab
		fileencoding = "utf-8", -- file content encoding for the buffer
		fillchars = { eob = " " }, -- disable `~` on nonexistent lines
		foldenable = true, -- 启用代码折叠
		foldlevel = 99, -- 默认打开所有折叠
		foldlevelstart = 99, -- start with all code unfolded
		foldcolumn = vim.fn.has("nvim-0.9") == 1 and "1" or nil, -- show foldcolumn in nvim 0.9
		history = 100, -- number of commands to remember in a history table
		ignorecase = true, -- 搜索忽略大小写
		infercase = true, -- 文本替换操作时,自动推断大小写
		laststatus = 3, -- 总是显示状态栏,0永不显示,1在多于1个窗口才显示
		linebreak = true, -- 自动换行
		preserveindent = true, -- 保留缩进
		pumheight = 10, -- height of the pop up menu
		shiftwidth = 2, -- 每次缩进使用2个空格字符
		showmode = false, -- disable showing modes in command line
		showtabline = 2, -- 总是显示标签栏,1创建标签页才显示
		signcolumn = "yes", -- 左侧留出一列展示符号
		smartcase = true, -- 搜索时智能根据字符串大小写决定是否启用大小写敏感
		splitbelow = true, -- splitting a new window below the current one
		splitright = true, -- splitting a new window at the right of the current one
		tabstop = 2, -- tab是2个空格宽度
		termguicolors = true, -- enable 24-bit RGB color in the TUI
		timeoutlen = 500, -- 按键响应超时时间
		undofile = true, -- enable persistent undo
		updatetime = 300, -- 执行自动命令之前等待300ms
		virtualedit = "block", -- 启用了块状虚拟编辑模式
		wrap = true, -- disable wrapping of lines longer than the width of window
		writebackup = false, -- 禁用写入备份文件
		backup = false,
		completeopt = { "menu", "menuone", "noselect" }, -- 补全菜单行为
		listchars = "eol:↵,lead:‧",
	},
	g = {
		mapleader = " ", -- set leader key
	},
}

for scope, table in pairs(options) do
	for setting, value in pairs(table) do
		vim[scope][setting] = value
	end
end
