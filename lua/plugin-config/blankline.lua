vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#61AFEF gui=nocombine]]

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}
