local map = vim.api.nvim_set_keymap
local opt = {
	noremap = true,
	silent = true,
}

map("i", "jj", "<Esc>", opt)
map("n", "ss", ":w<CR>", opt)
map("n", "<c-a>", "ggVG", opt)
map("n", "<leader>e", ":NvimTreeToggle<CR>", opt)
map("n", "q", ":q!<CR>", opt)
map("n", "<c-n>", ":nohl<CR>", opt)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, {})

map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opt)
map("n", "gh", "<cmd>Lspsaga finder<CR>", opt)
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opt)
map("n", "tm", "<cmd>Lspsaga term_toggle<CR>", opt)
map("n", "tl", "<cmd>Lspsaga outline<CR>", opt)
map("n", "tp", "<cmd>Lspsaga code_action<CR>", opt)

-- hop keymap
map("n", "ff", ":HopChar1<CR>", opt)
