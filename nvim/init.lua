-- Core
require('core.options')
require('core.keymaps')

-- Plugins
require('plugins.setup')

-- Plugins Config
require('plugins.config.ui')
require('plugins.config.treesitter')
require('plugins.config.nvim-tree')
require('plugins.config.lualine')
require('plugins.config.comment')
require('plugins.config.autopairs')
require('plugins.config.bufferline')
require('plugins.config.cmp')
require('plugins.config.telescrope')
require('plugins.config.toggleterm')
require('plugins.config.gitsigns')

-- LSP
require('plugins.lsp.lsp')
require('plugins.lsp.config')

-- DAP
require('plugins.dap.dap')
require('plugins.dap.ui')
require('plugins.dap.cpp')
require('plugins.dap.python')
