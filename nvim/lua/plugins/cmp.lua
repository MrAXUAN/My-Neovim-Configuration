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
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim"
        }
    }
}
