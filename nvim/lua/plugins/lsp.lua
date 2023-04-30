require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- LSP SERVER
require("mason-lspconfig").setup ({
    ensure_installed = {
        "lua_ls",
        "clangd",
        "rust_analyzer",
        "cmake",
        "pyright",
        "dockerls",
        "html",
    },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")

lspconfig.pyright.setup {
    capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
    capabilities = capabilities,
}

lspconfig.dockerls.setup {
    capabilities = capabilities,
}

lspconfig.html.setup {
    capabilities = capabilities,
}

lspconfig.cmake.setup {
    capabilities = capabilities,
}

lspconfig.clangd.setup {
    capabilities = capabilities,
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
