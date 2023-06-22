return {
    -- Trouble Nvim
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",

        config = function ()
            require("plugins.configs.trouble")
        end
    },

    -- Leap Nvim
    {
        "ggandor/leap.nvim",
        dependencies = { "tpope/vim-repeat" },
        event = "VeryLazy",

        config = function ()
            require("leap").add_default_mappings()
        end
    },

    -- Nvim Auto Pairs
    {
        "windwp/nvim-autopairs",
        version = false,

        config = function ()
            require("plugins.configs.autopairs")
        end
    },

    -- Rust Tools
    {
        "simrat39/rust-tools.nvim",
        event = "VeryLazy",

        config = function ()
            require("plugins.configs.rust-tools")
        end
    },

    -- Comment
    {
        "numToStr/Comment.nvim",
        event = "VeryLazy",

        config = function ()
            require("Comment").setup()
        end
    }
}
