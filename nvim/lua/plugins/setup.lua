local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'EdenEast/nightfox.nvim'

    -- Icons
    use 'nvim-tree/nvim-web-devicons'

    -- Nvim Ts Rainbow
    use "p00f/nvim-ts-rainbow"

    -- Vim Tmux Navigator
    use "christoomey/vim-tmux-navigator"

    -- NvimTree
    use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }

    -- LuaLine
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

    -- NvimTreeSitter
    use "nvim-treesitter/nvim-treesitter"

    -- ToggleTerm
    use { 'akinsho/toggleterm.nvim', tag = '*' }

    -- Comment
    use "numToStr/Comment.nvim"
    -- AutoPairs
    use "windwp/nvim-autopairs"

    -- Buffer Line
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Mason 
    use { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" }
    -- AutoCompletion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/cmp-path"

    -- DAP
    use 'mfussenegger/nvim-dap'
    use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }
    use 'theHamsta/nvim-dap-virtual-text'

    -- Git Signs
    use "lewis6991/gitsigns.nvim"
    -- LSP Kind
    use 'onsails/lspkind.nvim'
    -- LSP Saga
    use 'nvimdev/lspsaga.nvim'

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} } }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
