return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",

    config = function ()
        require("nvim-treesitter.configs").setup {
            ensure_installed = {
                "lua",
                "vim",
                "rust",
                "c",
                "cpp",
                "cmake",
                "javascript",
                "typescript",
                "tsx",
                "html",
                "go",
                "gomod",
                "gowork"
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-Space>",
                    node_incremental = "<C-Space>",
                    scope_incremental = false,
                    node_decremental = "<BS>"
                }
            }
        }
    end
}
