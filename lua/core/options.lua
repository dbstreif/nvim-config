vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.relativenumber = true
vim.opt.spelllang = 'en_us'
vim.opt.spell = false
vim.g.mapleader = ' ' 
vim.opt.mouse = ""
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
vim.opt.clipboard = "unnamedplus"
