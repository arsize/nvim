return {
	"shellRaining/hlchunk.nvim",
	event = { "UIEnter" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				style = {
					{ fg = "#806d9c" },
					{ fg = "#c21f30" }, -- this fg is used to highlight wrong chunk
				},
			},
			line_num = {
				enable = false,
				use_treesitter = false,
				style = "#806d9c",
			},
			indent = {
				enable = true,
				use_treesitter = false,
				chars = {
					"│",
				},
				style = {
					{ fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui") },
				},
			},
			blank = {
				enable = true,
				chars = {
					"․",
				},
				style = {
					vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
				},
			},
		})
	end,
}
