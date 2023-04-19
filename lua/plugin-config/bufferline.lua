vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    -- 使用nvim内置lsp
    diagnostics = "nvim_lsp",
    -- 左侧让出nvim-tree位置
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left"
    }}
  }
}
