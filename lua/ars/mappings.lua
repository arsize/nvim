local map = vim.api.nvim_set_keymap
local opt = {
    noremap = true, silent = true
}

map('i', 'jj', '<Esc>', opt)
map('n', 'q', ':q!<CR>', opt)
map('n', 'ss', ':w<CR>', opt)
map('n', '<c-a>', 'ggVG', opt)
map('n', '<Leader>e', ":NvimTreeToggle<CR>", opt)

local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})


map('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', opt)
