require('nvim-treesitter.configs').setup {
    ensure_installed = { "vim", "bash", "c", "cpp", "cmake", "javascript", "json", "lua", "python", "rust" },

    highlight = { enable = true },
    indent = { enable = true },

    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    }
}
