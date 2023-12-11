return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      theme = 'hyper',     --  theme is doom and hyper default is hyper
      hide = {
        statusline = true, -- hide statusline default is true
        tabline = true,    -- hide the tabline
        winbar = true
      }
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
