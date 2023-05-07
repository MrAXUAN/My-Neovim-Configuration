return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        require("bufferline").setup{
            options = {
                diagnostics = "nvim_lsp",
                offsets = {{
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left"
                }},
                numbers = function(opts)
                    return opts.ordinal
                end,
            }
        }

        vim.keymap.set({"n", "i"}, "<A-1>", "<Cmd>:BufferLineGoToBuffer 1<CR>")
        vim.keymap.set({"n", "i"}, "<A-2>", "<Cmd>:BufferLineGoToBuffer 2<CR>")
        vim.keymap.set({"n", "i"}, "<A-3>", "<Cmd>:BufferLineGoToBuffer 3<CR>")
        vim.keymap.set({"n", "i"}, "<A-4>", "<Cmd>:BufferLineGoToBuffer 4<CR>")
        vim.keymap.set({"n", "i"}, "<A-5>", "<Cmd>:BufferLineGoToBuffer 5<CR>")
        vim.keymap.set({"n", "i"}, "<A-6>", "<Cmd>:BufferLineGoToBuffer 6<CR>")
        vim.keymap.set({"n", "i"}, "<A-7>", "<Cmd>:BufferLineGoToBuffer 7<CR>")
        vim.keymap.set({"n", "i"}, "<A-8>", "<Cmd>:BufferLineGoToBuffer 8<CR>")
        vim.keymap.set({"n", "i"}, "<A-9>", "<Cmd>:BufferLineGoToBuffer 9<CR>")
    end,
}
