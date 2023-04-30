require("toggleterm").setup ({
    size = 8,
    open_mapping = [[<C-t>]],
})


local opts = { buffer = 0 }

vim.keymap.set("n", "<C-t>", "<CMD>ToggleTerm<CR>", opts)
vim.keymap.set("t", "<C-t>", "<CMD>ToggleTerm<CR>", opts)
