local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.offsetEncoding = { "utf-8", "utf-16" }
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

local opts = {
	capabilities = capabilities,
}

local lsp = {
	"lua_ls",
	"gopls",
	"html",
	"rust_analyzer",
	"tsserver",
}

require("mason-lspconfig").setup({
	ensure_installed = lsp,
})

for _, v in ipairs(lsp) do
	require("lspconfig")[v].setup({ opts })
end

require("lspconfig")["volar"].setup({
	capabilities = capabilities,
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})
require("lspconfig")["sourcekit"].setup({
	capabilities = capabilities,
	cmd = { "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp" },
	root_dir = function(filename, _)
		return util.root_pattern("buildServer.json")(filename)
			or util.root_pattern("*.xcodeproj", "*.xcworkspace")(filename)
			or util.find_git_ancestor(filename)
			or util.root_pattern("Package.swift")(filename)
	end,
})
