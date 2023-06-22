return {
    -- Mason
    { "williamboman/mason.nvim" },

    -- Mason LSP Config
    { "williamboman/mason-lspconfig" },

    -- Neovim LSP Config
    {
        "neovim/nvim-lspconfig",

        config = function ()
            require("plugins.configs.lspconfig")
        end
    }
}
