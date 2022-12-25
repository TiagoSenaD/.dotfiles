local execute = vim.api.nvim_command
local Plug = vim.fn['plug#'] --yes, i like vim-plug :)

vim.call('plug#begin','~/.config/nvim/plugged')
        --lsp
                Plug "williamboman/mason.nvim"
                Plug "neovim/nvim-lspconfig"
        --term
                Plug ('akinsho/toggleterm.nvim', {tag = 'v1.*'})
        --theme
                Plug 'Mofiqul/vscode.nvim'

vim.call('plug#end')

