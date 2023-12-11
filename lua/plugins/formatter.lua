return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			logging = false,
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				go = {
					require("formatter.filetypes.go").gofmt
				},
				vue = {
					require("formatter.filetypes.vue").prettier
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt
				}
			},
		})
	end,
}
