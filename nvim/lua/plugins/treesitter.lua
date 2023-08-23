return {
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter.configs",
    build = ":TSUpdate",
    event = "VeryLazy",
    opts = {
        ensure_installed = "all",
        highlight = {
            enable = true
        },
        indent = {
            enable = true
        }
    }
}
