local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- swift
lspconfig.sourcekit.setup({
	capabilities = capabilities,
	cmd = { "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp" },
	root_dir = function(filename, _)
		return util.root_pattern("buildServer.json")(filename)
			or util.root_pattern("*.xcodeproj", "*.xcworkspace")(filename)
			or util.find_git_ancestor(filename)
			or util.root_pattern("Package.swift")(filename)
	end,
})

-- deno
lspconfig.denols.setup({
	capabilities = capabilities,
	single_file_support = false,
	root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
})

-- TSServer
lspconfig.tsserver.setup({
	capabilities = capabilities,
	single_file_support = false,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
	root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
})

-- vue3
lspconfig.volar.setup({
	capabilities = capabilities,
	init_options = {
		typescript = {
			serverPath = "/Users/arsize/.npm-global/lib/node_modules/typescript/lib/tsserverlibrary.js",
		},
	},
})

-- go
lspconfig.gopls.setup({
	capabilities = capabilities,
	filetypes = { "go" },
})

-- rs
lspconfig.rust_analyzer.setup({
	capabilities = capabilities,
	filetypes = { "rust" },
})
