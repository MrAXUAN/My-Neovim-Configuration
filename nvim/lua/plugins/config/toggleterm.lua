local opt = require('toggleterm').setup({
    size = 70,

    open_mapping = [[<C-\>]],

    start_in_insert = true,

    direction = 'vertical' -- hoeizontal, vertical, float, tab
})

vim.keymap.set("n", "<leader>t", "<Esc>:ToggleTerm<CR>")

vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "jk", "<C-\\><C-n>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>l", "<Cmd> wincmd l<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>h", "<Cmd> wincmd h<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>j", "<Cmd> wincmd j<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<leader>k", "<Cmd> wincmd k<CR>", {noremap = true, silent = true})
