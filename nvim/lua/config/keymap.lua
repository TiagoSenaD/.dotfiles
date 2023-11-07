vim.keymap.set('n', '<Switch>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' ' --making <Space> the leader key

--Switch hl
vim.keymap.set('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

--Undo and Redo
vim.keymap.set('n', '<C-z>', ':undo<CR>', {silent = true})
vim.keymap.set('n', '<S-z>', ':redo<CR>', {silent = true})

--Better indenting
vim.keymap.set('v', '>', '>gv', {noremap = true, silent = true})
vim.keymap.set('v', '<', '<gv', {noremap = true, silent = true})

--Move lines
vim.keymap.set('n', '<A-UP>', ':m .-2<CR>==', {noremap = true, silent = true})
vim.keymap.set('n', '<A-DOWN>', ':m .+1<CR>==', {noremap = true, silent = true})
vim.keymap.set('i', '<A-DOWN>', '<ESC>:m .+1<CR>==gi', {noremap = true, silent = true})
vim.keymap.set('i', '<A-UP>', '<ESC>:m .-2<CR>==gi', {noremap = true, silent = true})
vim.keymap.set('v', '<A-UP>', ':m \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.keymap.set('v', '<A-DOWN>', ':m \'>+1<CR>gv-gv', {noremap = true, silent = true})

--Tabs
vim.keymap.set('n', '<A-Right>', ':tabnext<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-Left>', ':tabNext<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-S-Right>', ':tabmove +1<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-S-Left>', ':tabmove -1<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>z', ':tabnew | Explore<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader>x', ':tabclose<CR>', {noremap = true, silent = true})

--Tabs hjkl
--vim.keymap.set('n', '<A-h>', ':tabnext<CR>', {noremap = true, silent = true})
--vim.keymap.set('n', '<A-l>', ':tabNext<CR>', {noremap = true, silent = true})
--vim.keymap.set('n', '<A-S-h>', ':tabmove +1<CR>', {noremap = true, silent = true})
--vim.keymap.set('n', '<A-S-l>', ':tabmove -1<CR>', {noremap = true, silent = true})

--Buffer
vim.keymap.set('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Leader><TAB>', ':bdelete<CR>', {noremap = true, silent = true})

--<ESC> options
vim.keymap.set('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.keymap.set('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.keymap.set('i', 'jj', ':<ESC>', {noremap = true, silent = true})
vim.keymap.set('i', 'KK', ':<ESC>', {noremap = true, silent = true})
