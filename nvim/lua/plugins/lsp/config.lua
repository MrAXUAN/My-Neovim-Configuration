require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'clangd', 'rust_analyzer', 'pyright', 'cmake', 'tsserver' },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')


-- LSP And CMP
lspconfig.rust_analyzer.setup {
    capabilities = capabilities
}

lspconfig.cmake.setup {
    capabilities = capabilities
}

lspconfig.pyright.setup {
    capabilities = capabilities
}

lspconfig.clangd.setup {
    capabilities = capabilities
}

lspconfig.bashls.setup {
    capabilities = capabilities
}

lspconfig.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
}

lspconfig.tsserver.setup {
    capabilities = capabilities
}

