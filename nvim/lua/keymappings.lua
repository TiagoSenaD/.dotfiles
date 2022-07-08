vim.api.nvim_set_keymap('n', '<Switch>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' ' --making <Space> the leader key

--Switch hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

--Undo and Redo
vim.api.nvim_set_keymap('n', '<C-z>', ':undo<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<S-z>', ':redo<CR>', {silent = true})

--Better indenting
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})

--Move lines
vim.api.nvim_set_keymap('n', '<A-UP>', ':m .-2<CR>==', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-DOWN>', ':m .+1<CR>==', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<A-DOWN>', '<ESC>:m .+1<CR>==gi', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<A-UP>', '<ESC>:m .-2<CR>==gi', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-UP>', ':m \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-DOWN>', ':m \'>+1<CR>gv-gv', {noremap = true, silent = true})

--Tabs
vim.api.nvim_set_keymap('n', '<A-Right>', ':tabnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-Left>', ':tabNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-S-Right>', ':tabmove +1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-S-Left>', ':tabmove -1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>z', ':tabnew<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>x', ':tabclose<CR>', {noremap = true, silent = true})

--Buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader><TAB>', ':bdelete<CR>', {noremap = true, silent = true})

--<ESC> options
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', ':<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'KK', ':<ESC>', {noremap = true, silent = true})


