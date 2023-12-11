local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.offsetEncoding = { "utf-8", "utf-16" }
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

local opts = {
    capabilities = capabilities,
}

local lsp = {
    'lua_ls',
    'gopls',
    'html',
    'rust_analyzer',
    'tsserver'
};

require("mason-lspconfig").setup {
    ensure_installed = lsp,
}

for _, v in ipairs(lsp) do
    require('lspconfig')[v].setup { opts }
end

require('lspconfig')['volar'].setup {
    filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' }
}
