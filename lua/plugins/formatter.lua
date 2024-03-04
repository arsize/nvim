return {
	"mhartington/formatter.nvim",
	config = function()
		local util = require("formatter.util")
		require("formatter").setup({
			logging = false,
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				go = {
					require("formatter.filetypes.go").gofmt,
				},
				vue = {
					require("formatter.filetypes.vue").prettier,
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt,
				},
				swift = {
					function()
						return {
							exe = "swiftformat",
							args = {
								"--search-parent-directories",
								"--stdin-filepath",
								util.escape_path(util.get_current_buffer_file_path()),
								"--",
								"-",
							},
							stdin = true,
						}
					end,
				},
				typescriptreact = {
					require("formatter.filetypes.typescriptreact").prettier,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettier,
				},
				javascriptreact = {
					require("formatter.filetypes.javascriptreact").prettier,
				},
				html = {
					require("formatter.filetypes.html").prettier,
				},
				typescript = {
					require("formatter.filetypes.typescript").prettier,
				},
				json = {
					require("formatter.filetypes.json").prettier,
				},
				dart = {
					require("formatter.filetypes.dart").dartformat
				}
			},
		})
	end,
}
