return {
    {
        "williamboman/mason.nvim",
       dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig"
        },
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
            ensure_installed = {
                "lua_ls",
                "clangd",
                "rust_analyzer",
                "cmake",
                "pyright",
                "tsserver"
            },
        },
        config = function (_, opts)
            local lspconfig = require("lspconfig")

            require("mason").setup(opts)

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- lspconfig.lua_ls.setup {
            --     capabilities = capabilities,
            -- }

            local servers = {
                "lua_ls",
                "clangd",
                "rust_analyzer",
                "cmake",
                "pyright",
                "tsserver"
            }

            for _, lsp in ipairs(servers) do
                lspconfig[lsp].setup {
                    -- on_attach = my_custom_on_attach,
                    capabilities = capabilities,
                }
            end

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {
                                "vim"
                            }
                        }
                    }
                }
            })

        end
    }
}

