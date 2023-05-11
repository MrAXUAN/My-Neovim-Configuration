return {
    -- Nvim CMP
    {
        "hrsh7th/nvim-cmp",
        version = false, -- last release is way too old
        lazy = "VeryLazy",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        }
    },

    -- Mason
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        },

        config = function (_, opts)
            require("mason").setup(opts)
        end
    },

    -- Mason LSP Config
    {
        "williamboman/mason-lspconfig",

        opts = {
            ensure_installed = {
                "lua_ls",
                "clangd",
                "rust_analyzer",
                "cmake"
            }
        },
        config = function (_, opts)
            require("mason-lspconfig").setup(opts)
        end
    },

    -- Neovim LSP Config
    {
        "neovim/nvim-lspconfig",

        config = function ()
            require "plugins.configs.lspconfig"
        end
    },

    -- Trouble Nvim
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },

        config = function ()
            require("trouble").setup {
                position = "bottom", -- position of the list can be: bottom, top, left, right
                height = 10, -- height of the trouble list when position is top or bottom
                width = 50, -- width of the list when position is left or right
                icons = true, -- use devicons for filenames
                mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
                fold_open = "", -- icon used for open folds
                fold_closed = "", -- icon used for closed folds
                group = true, -- group results by file
                padding = true, -- add an extra new line on top of the list
                indent_lines = true, -- add an indent guide below the fold icons
                auto_open = false, -- automatically open the list when you have diagnostics
                auto_close = false, -- automatically close the list when you have no diagnostics
                auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
                auto_fold = false, -- automatically fold a file trouble list at creation
                auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
                signs = {
                    -- icons / text used for a diagnostic
                    error = "",
                    warning = "",
                    hint = "",
                    information = "",
                    other = "﫠"
                },
                use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
            }

            -- Lua
            vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
            vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", {silent = true, noremap = true})
            vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", {silent = true, noremap = true})
            vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", {silent = true, noremap = true})
            vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", {silent = true, noremap = true})
            vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", {silent = true, noremap = true})
        end
    },

    -- Nvim Auto Pairs
    {
        "windwp/nvim-autopairs",
        version = false,

        config = function ()
            local npairs_ok, npairs = pcall(require, "nvim-autopairs")
            if not npairs_ok then
                return
            end

            npairs.setup {
                check_ts = true,
                ts_config = {
                    lua = { "string", "source" },
                    javascript = { "string", "template_string" },
                },
                fast_wrap = {
                    map = '<M-e>',
                    chars = { '{', '[', '(', '"', "'" },
                    pattern = [=[[%'%"%)%>%]%)%}%,]]=],
                    end_key = '$',
                    keys = 'qwertyuiopzxcvbnmasdfghjkl',
                    check_comma = true,
                    highlight = 'Search',
                    highlight_grey='Comment'
                },
            }

            -- 配置这个使得自动补全会把括号带上

            local cmp_autopairs = require "nvim-autopairs.completion.cmp"
            local cmp_status_ok, cmp = pcall(require, "cmp")
            if not cmp_status_ok then
                return
            end
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
        end
    },

    -- Comment
    {
        "numToStr/Comment.nvim",

        config = function ()
            require("Comment").setup()
        end
    }
}
