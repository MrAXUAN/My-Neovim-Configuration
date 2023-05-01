require('nvim-treesitter.configs').setup {
    -- 添加不同语言
    ensure_installed = { 'vim', 'lua', 'c', 'cpp', 'cmake', 'rust', 'python', 'javascript', 'typescript' },

    highlight = { enable = true },
    indent = { enable = true },

    -- 不同括号颜色区分
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
