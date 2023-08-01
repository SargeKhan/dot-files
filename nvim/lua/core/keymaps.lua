vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- move b/w modes
vim.keymap.set('i', 'jj', '<C-c>')

--- Shift easily b/w windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')


-- Copy and paste b/w OS and vim incase we are not sharing buffer b/w os and vim
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.opt.clipboard = 'unnamedplus'

---- -- fold related options
vim.opt.foldmethod = 'syntax'
vim.opt.foldnestmax = 15
vim.opt.foldlevel = 2

--- casing 
vim.g.ignorecase = true
vim.g.smartcase = true
