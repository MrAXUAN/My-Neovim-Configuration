return {
    -- File Explorer
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        config = function()
            require("nvim-tree").setup({
                git = { enable = true }
            })
            vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
        end
    }
}
