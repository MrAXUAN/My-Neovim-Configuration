return {
    -- File Explorer
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function ()
        require("nvim-tree").setup {
            git = { enable = false }
        }

        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
    end
}
