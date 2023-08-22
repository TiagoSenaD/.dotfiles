local execute = vim.api.nvim_command
local Plug = vim.fn['plug#']

vim.call('plug#begin','~/.config/nvim/plugged')
        --lsp
                Plug "williamboman/mason.nvim"
                Plug "williamboman/mason-lspconfig.nvim"
                Plug "neovim/nvim-lspconfig"
        --cmp
                Plug 'hrsh7th/cmp-nvim-lsp'
                Plug 'hrsh7th/nvim-cmp'
               -- Plug 'hrsh7th/cmp-buffer'
               -- Plug 'hrsh7th/cmp-path'
               -- Plug 'hrsh7th/cmp-cmdline'
        --vsnip
               -- Plug 'hrsh7th/cmp-vsnip'
               -- Plug 'hrsh7th/vim-vsnip'
        --term
                Plug 'voldikss/vim-floaterm'
        --theme
                Plug 'Mofiqul/vscode.nvim'

vim.call('plug#end')

