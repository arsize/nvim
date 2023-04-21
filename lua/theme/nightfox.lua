require('nightfox').setup({
  options = {
    transparent = true,
    terminal_colors = true,
  },
  palettes = {
    nightfox = {
      white = "#abb2bf",
      red="#c678dd"
    }
  }
})

vim.cmd("colorscheme nightfox")
